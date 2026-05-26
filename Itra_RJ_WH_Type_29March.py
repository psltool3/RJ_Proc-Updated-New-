import math
import numpy as np
import json
import pickle
import os.path
from os import path
import shutil
import subprocess
import pymongo
import uuid
import pandas as pd
from pulp import *
import xlrd
from flask import Flask, request, jsonify
from flask_cors import CORS
import mysql.connector
import requests
import time
import secrets
import string
from datetime import datetime
from pulp import LpStatus, LpStatusInfeasible, LpStatusUnbounded, LpStatusNotSolved, LpStatusUndefined
from io import BytesIO
from cryptography.fernet import Fernet		
import os
from datetime import datetime

USN = pd.ExcelFile('Backend//Data_1.xlsx')
FCI = pd.read_excel(USN, sheet_name='A.1 Warehouse', index_col=None)
print(FCI['Paddy_Procurement'].sum())
FPS = pd.read_excel(USN, sheet_name='A.2 FPS', index_col=None)

# N = {0: "Owned", 1: "Hired", 2:"To be hired"}

N = {0: "Governement2", 1: "Governement3", 2:"Private1" , 3: "Private2", 4: "Private3", 5:"Private4"}

FCI.rename(columns={'Paddy_Procurement': 'Storage_Capacity'}, inplace=True)
print(FCI['Storage_Capacity'].sum())


for n in N:
    print(n)
    FPS_N = FPS[FPS['Type of Warehouse'] == N[n]].reset_index(drop=True)
    FPS_N.rename(columns={'Milling_Process': 'Allocation_Wheat'}, inplace=True)
    node1 = FCI
    node2 = FPS_N
    dist = [[0 for a in range(len(node2["FPS_ID"]))] for b in range(len(node1["WH_ID"]))]
    phi_1 = []
    phi_2 = []
    delta_phi = []
    delta_lambda = []
    R = 6371

    node1["WH_Long"] = pd.to_numeric(node1["WH_Long"], errors="coerce")
    node1["WH_Lat"] = pd.to_numeric(node1["WH_Lat"], errors="coerce")
    
    node2["FPS_Long"] = pd.to_numeric(node2["FPS_Long"], errors="coerce")
    node2["FPS_Lat"] = pd.to_numeric(node2["FPS_Lat"], errors="coerce")

    for i in range(len(node1)):
        for j in range(len(node2)):
            phi_1=math.radians(node1["WH_Lat"][i])
            phi_2=math.radians(node2["FPS_Lat"][j])
            delta_phi=math.radians(node2["FPS_Lat"][j]-node1["WH_Lat"][i])
            delta_lambda=math.radians(node2["FPS_Long"][j]-node1["WH_Long"][i])
            x=math.sin(delta_phi / 2.0) ** 2 + math.cos(phi_1) * math.cos(phi_2) * math.sin(delta_lambda / 2.0) ** 2
            y=2 * math.atan2(math.sqrt(x), math.sqrt(1 - x))
            dist[i][j]=R*y
#     print(dist)
    # Convert distance matrix to DataFrame
    dist_df = pd.DataFrame(dist,
                           index=node1["WH_ID"],
                           columns=node2["FPS_ID"])

#     # Save to Excel
#     dist_df.to_excel("distance_matrix.xlsx")
        
          
    Variable1 = []
        
    model = LpProblem('Supply-Demand-Problem', LpMinimize)
    for i in range(len(FCI['WH_ID'])):
        for j in range(len(FPS_N['FPS_ID'])):
            Variable1.append(str(FCI['WH_ID'][i]) + '_'
                         + str(FCI['WH_District'][i]) + '_'
                         + str(FPS_N['FPS_ID'][j]) + '_'
                         + str(FPS_N['FPS_District'][j]) + '_Wheat')

    # Variables for Wheat from lEVEL2 TO FPS
    

    DV_Variables1 = LpVariable.matrix('X', Variable1, cat='float',
        lowBound=0)
    Allocation1 = np.array(DV_Variables1).reshape(len(FCI['WH_ID']),
        len(FPS_N['FPS_ID']))
#     print(Allocation1)

    allCombination1 = []
        
    for i in range(len(dist)):
        for j in range(len(FPS_N['FPS_ID'])):
            allCombination1.append(Allocation1[i][j] * dist[i][j])

#     print(allCombination1)
    model += lpSum(allCombination1)

    # Demand Constraints for Wheat

    FPS_N['Demand'] = FPS_N['Allocation_Wheat']


    TotalSupply=FCI['Storage_Capacity'].sum()
    TotalDemand=FPS_N['Demand'] .sum()
    TotalCapacity=FPS_N['Capacity'] .sum()

    print(TotalSupply)
    print(TotalDemand)
    print(TotalCapacity)
    
    if TotalSupply <= TotalDemand:
        print("Case 1")
    elif TotalSupply >= TotalDemand and TotalSupply >= TotalCapacity:
        print("Case 2")
    elif TotalSupply >= TotalDemand and TotalSupply <= TotalCapacity:
        print("Case 3")

    districts = FCI['WH_District'].unique()
    for d in districts:
        total_supply = FCI.loc[FCI['WH_District'] == d, 'Storage_Capacity'].sum()
        total_demand = FPS_N.loc[FPS_N['FPS_District'] == d, 'Allocation_Wheat'].sum()
    
        if total_supply >= total_demand:
            # Block only inter-district inflows for this district
            for j in range(len(DV_Variables1)):
                name = str(DV_Variables1[j])
                lst = name.split("_")
                # lst8[2] = warehouse district, lst8[4] = FPS district
                if lst[4] == d and lst[2] != lst[4]:
                    model += DV_Variables1[j] == 0

        else:
            # Case 2: supply < demand → block inter-district outflows from this district
            for j in range(len(DV_Variables1)):
                name = str(DV_Variables1[j])
                lst = name.split("_")
                # forbid warehouses of district d from sending to other districts
                if lst[2] == d and lst[4] != d:
                    model += DV_Variables1[j] == 0                                         
    if TotalSupply <= TotalDemand :  
    
        for i in range(len(FPS_N['FPS_ID'])):
            model += lpSum(Allocation1[j][i] for j in range(len(FCI['WH_ID'
                           ]))) <= FPS_N['Demand'][i]    
            
        for i in range(len(FPS_N['FPS_ID'])):
            model += lpSum(Allocation1[j][i] for j in range(len(FCI['WH_ID'
                           ]))) <= FPS_N['Capacity'][i]      
       
        for i in range(len(FCI['WH_ID'])):
            model += (lpSum(Allocation1[i][j] for j in range(len(FPS_N['FPS_ID'
                           ]))) <= FCI['Storage_Capacity'][i])
    
        for i in range(len(FCI['WH_ID'])):
            model += (lpSum(Allocation1[i][j] for j in range(len(FPS_N['FPS_ID'
                           ]))) >= FCI['Storage_Capacity'][i])    
        
    elif TotalSupply >= TotalDemand and TotalSupply >= TotalCapacity:
       
    
        for i in range(len(FPS_N['FPS_ID'])):
            model += lpSum(Allocation1[j][i] for j in range(len(FCI['WH_ID'
                           ]))) >= FPS_N['Demand'][i] 
            
        for i in range(len(FPS_N['FPS_ID'])):
            model += lpSum(Allocation1[j][i] for j in range(len(FCI['WH_ID'
                           ]))) <= FPS_N['Capacity'][i]  
            
        for i in range(len(FPS_N['FPS_ID'])):
            model += lpSum(Allocation1[j][i] for j in range(len(FCI['WH_ID'
                           ]))) >= FPS_N['Capacity'][i]       
        
        for i in range(len(FCI['WH_ID'])):
            model += (lpSum(Allocation1[i][j] for j in range(len(FPS_N['FPS_ID'
                           ]))) <= FCI['Storage_Capacity'][i])
        
    elif TotalSupply >= TotalDemand and TotalSupply <= TotalCapacity:
    
       
        for i in range(len(FPS['FPS_ID'])):
            model += lpSum(Allocation1[j][i] for j in range(len(FCI['WH_ID'
                           ]))) >= FPS_N['Demand'][i]    
        
        for i in range(len(FCI['WH_ID'])):
            model += (lpSum(Allocation1[i][j] for j in range(len(FPS['FPS_ID'
                           ]))) <= FCI['Storage_Capacity'][i]) 
        
        for i in range(len(FCI['WH_ID'])):
            model += (lpSum(Allocation1[i][j] for j in range(len(FPS_N['FPS_ID'
                           ]))) >= FCI['Storage_Capacity'][i])
        
        for i in range(len(FPS_N['FPS_ID'])):
            model += lpSum(Allocation1[j][i] for j in range(len(FCI['WH_ID'
                           ]))) <= FPS_N['Capacity'][i]         
    
    # Calling CBC_CMB Solver
    
    model.solve(CPLEX_CMD(options=['set mip tolerances mipgap 0.01']))

    
    TotalAllocationFromFCI = {}
    for i in range(len(FCI['WH_ID'])):
        for i in range(len(FCI)):TotalAllocationFromFCI[i] = sum((Allocation1[i][j].value() or 0)for j in range(len(FPS_N)))

    for i in range(len(FCI['WH_ID'])):
        FCI.loc[i, 'Storage_Capacity'] = (FCI.loc[i, 'Storage_Capacity'] - TotalAllocationFromFCI[i])

    filename = f'Backend//Inter_District_{n}.csv'

    with open(filename, 'w') as f:
        for v in model.variables():
            if v.value() and v.value() > 0:
                f.write(f"{v.name}\t{v.value()}\n")

import glob
import pandas as pd

files = glob.glob("Backend//Inter_District_*.csv")

dfs = []

for f in files:
    try:
        temp = pd.read_csv(f, sep='\t', header=None)

        # Skip if dataframe is empty
        if temp.empty:
            continue

        # Process only non-empty dataframes
        temp = temp.astype(str).agg(' '.join, axis=1)
        dfs.append(temp)

    except pd.errors.EmptyDataError:
        # Skip completely empty files
        continue

# Only concatenate if we have valid data
if dfs:
    df = pd.concat(dfs, ignore_index=True)
    df = df.to_frame(name='Tagging')
    df.to_csv("Backend//Inter_District1.csv", index=False)
else:
    print("No valid data found in any files.")

# this cell will works when more than two category will used means when we optimise the priority based data


# import glob
# import pandas as pd

# files = glob.glob("Backend//Inter_District_*.csv")

# df = pd.concat([
#     pd.read_csv(f, sep='\t', header=None).astype(str).agg(' '.join, axis=1)
#     for f in files
# ])

# df = df.to_frame(name='Tagging')

# df.to_csv("Backend//Inter_District1.csv", index=False)

df9 = pd.read_csv('Backend//Inter_District1.csv', header=None, encoding='latin1')

df9.columns = ['Tagging']
df9[[
    'Var',
    'WH_ID',
    'W_D',
    'FPS_ID',
    'FPS_D',
    'commodity_Value',
    ]] = df9[df9.columns[0]].str.split('_', n=5, expand=True)
del df9[df9.columns[0]]
df9[['commodity', 'Values']] = df9['commodity_Value'
        ].str.split(' ', n=1, expand=True)
del df9['commodity_Value']
df9 = df9.drop(np.where(df9['commodity'] == 'Wheat1')[0])

def convert_to_numeric(value):
    try:
        return pd.to_numeric(value)
    except ValueError:
        return value


df9['WH_ID'] = df9['WH_ID'].apply(convert_to_numeric)
df9['FPS_ID'] = df9['FPS_ID'].apply(convert_to_numeric)

df9.to_excel('Backend//Tagging_Sheet_Pre.xlsx', sheet_name='BG_FPS')
df31 = pd.read_excel('Backend//Tagging_Sheet_Pre.xlsx')

USN = pd.ExcelFile('Backend//Data_1.xlsx')
FCI = pd.read_excel(USN, sheet_name='A.1 Warehouse', index_col=None)
FPS = pd.read_excel(USN, sheet_name='A.2 FPS', index_col=None)


df4 = pd.merge(df31, FCI, on='WH_ID', how='inner')
#df4 = pd.merge(df31, FCI, on='WH_ID', how='inner')
df4 = df4[[
    'WH_ID',
    'Type',
    'WH_Name',
    'WH_District',
    'WH_Lat',
    'WH_Long',
    'FPS_ID',
    'Values',
    ]]
df4 = pd.merge(df4, FPS, on='FPS_ID', how='inner')
df51 = df4[[
    'WH_ID',
    'Type',
    'WH_Name',
    'WH_District',
    'WH_Lat',
    'WH_Long',
    'FPS_ID',
    'FPS_Name',
    'FPS_District',
    'FPS_Lat',
    'FPS_Long',
    'Values',
    ]]
df51.insert(0, 'Scenario', 'Optimised')
df51.insert(1, 'From', 'PC')
df51.insert(2, 'From_State', 'Madhya Pradesh')# Change state name
df51.insert(7, 'To', 'Warehouse')
df51.insert(8, 'To_State', 'Madhya Pradesh')# Change state name
df51.insert(9, 'commodity', 'Wheat')

df51.rename(columns={
    'WH_ID': 'From_ID',
    'WH_Name': 'From_Name',
    'WH_Lat': 'From_Lat',
    'WH_Long': 'From_Long',
    }, inplace=True)
df51.rename(columns={
    'FPS_ID': 'To_ID',
    'FPS_Name': 'To_Name',
    'FPS_Lat': 'To_Lat',
    'FPS_Long': 'To_Long',
    'Values': 'quantity',

    }, inplace=True)
df51.rename(columns={'WH_District': 'From_District',
                  
           'FPS_District': 'To_District'}, inplace=True)

df51 = df51.loc[:, [
    'Scenario',
    'From',
    'From_State',
    'From_District',
    'From_ID',
    'From_Name',
    'From_Lat',
    'From_Long',
    'To',
    'To_ID',
    'To_Name',
    'To_State',
    'To_District',
    'To_Lat',
    'To_Long',
    'commodity',
    'quantity',
    ]]
print(df51)

def convert_to_numeric(value):
    try:
        return pd.to_numeric(value)
    except ValueError:
        return value

#print(df5111)       

df_combined = pd.concat([df51])
df_combined1 = df_combined[df_combined['quantity'] != 0]
df_combined1['From_ID'] = df_combined1['From_ID'].apply(convert_to_numeric)
df_combined1['To_ID'] = df_combined1['To_ID'].apply(convert_to_numeric)
df_combined1.to_excel('Backend//Tagging_Sheet_Pre11.xlsx', sheet_name='BG_FPS1')

input = pd.ExcelFile('Backend/Data_1.xlsx')
import pandas as pd

# Load warehouse sheet
node1 = pd.read_excel(input, sheet_name="A.1 Warehouse")
node1["concatenate"] = node1['WH_Lat'].astype(str) + ',' + node1['WH_Long'].astype(str)

# Load FPS sheet
node2 = pd.read_excel(input, sheet_name="A.2 FPS")
node2["concatenate1"] = node2['FPS_Lat'].astype(str) + ',' + node2['FPS_Long'].astype(str)

Distance = pd.ExcelFile('Backend//Distance_Initial_L2.xlsx')
DistanceBing = pd.read_excel(Distance,sheet_name="BG_BG")
Warehouse = pd.read_excel(Distance,sheet_name="Warehouse")
FPS = pd.read_excel(Distance,sheet_name="FPS")
node1 = node1[['WH_ID', 'WH_Lat', 'WH_Long','concatenate']]
Warehouse['WH_ID'] = Warehouse['WH_ID'].astype(str)
node1['WH_ID'] = node1['WH_ID'].astype(str)
FPS['FPS_ID'] = FPS['FPS_ID'].astype(str)
War = pd.merge(node1, Warehouse, on='WH_ID')
df1_w = War[War['concatenate'] != War['Lat_Long']]
Warehouse_ID = df1_w['WH_ID'].unique()
node2 = node2[['FPS_ID', 'FPS_Lat', 'FPS_Long','concatenate1']].astype(str)
FPS1 = pd.merge(node2, FPS, on='FPS_ID')
df1_f = FPS1[FPS1['concatenate1'] != FPS1['Lat_Long']]
FPS_ID = df1_f['FPS_ID'].unique()
BG_BG = pd.read_excel(Distance,sheet_name="BG_BG")
Distance1 = BG_BG.drop(columns=BG_BG.columns[BG_BG.columns.isin(Warehouse_ID)])
Distance2 =Distance1.T
Distance3 = Distance2.drop(columns=Distance2.columns[Distance2.columns.isin(FPS_ID)])
Distance3 = Distance3.T
with pd.ExcelWriter('Backend//Uttrakhand_Distance_L2.xlsx') as writer:
    Distance3.to_excel(writer, sheet_name='BG_BG', index=False)
            
data1 = pd.ExcelFile("Backend//Tagging_Sheet_Pre11.xlsx")
df5 = pd.read_excel(data1,sheet_name="BG_FPS1")
data1.close()

Cost = pd.ExcelFile("Backend//Uttrakhand_Distance_L2.xlsx")
BG_BG = pd.read_excel(Cost,sheet_name="BG_BG")
Cost.close()

Distance_BG_BG = {}
column_list_BG_BG = list(BG_BG.columns.astype(str))
row_list_BG_BG = list(BG_BG.iloc[:, 0].astype(str))

for ind in df5.index:
    from_code = df5['From_ID'][ind]
    to_code = df5['To_ID'][ind]
    from_code_str = str(from_code)
    to_code_str = str(to_code)

    if to_code_str in row_list_BG_BG and from_code_str in column_list_BG_BG:
        index_i = row_list_BG_BG.index(to_code_str)
        index_j = column_list_BG_BG.index(from_code_str)
        key = to_code_str + "_" + from_code_str
        Distance_BG_BG[key] = BG_BG.iloc[index_i, index_j] 


df5["Tagging"] = df5['To_ID'].astype(str) + '_' + df5['From_ID'].astype(str)
df5['Distance'] = df5['Tagging'].map(Distance_BG_BG)
df5.fillna('shallu', inplace=True)
df5.to_excel('Backend//Result_Sheet12.xlsx', sheet_name='Warehouse_FPS', index=False)

Result_Sheet1 = pd.ExcelFile("Backend//Result_Sheet12.xlsx")
df6 = pd.read_excel(Result_Sheet1, sheet_name="Warehouse_FPS")
Result_Sheet1.close()

df7 = df6.loc[df6['Distance'] == "shallu"]

auth_url = 'https://kerala.pmgatishakti.gov.in/PMGatishaktiApiService/authenticate'
distance_url = 'https://kerala.pmgatishakti.gov.in/PMGatishaktiApiService/dfpdapi/roaddistance'
auth_payload = {
    "username": "DFPD_C",
    "password": "W9Vtb8WKkt3"
}

FILE_PATH = 'distanceIndent.json'

def get_token():
    response = requests.post(auth_url, json=auth_payload)
    if response.status_code == 200:
        token = response.json()['token']
        if token : 
            return token
        else: 
            return False
    else:
        return False

response_data = []


def process_batch(df_batch):
    token = get_token()    
    time.sleep(15)
    headers = {
        'Authorization': f'Bearer {token}',
    }

    data = {
        "parameter": [{
            "src_lng": row["From_Long"],
            "src_lat": row["From_Lat"],
            "dest_lng": row["To_Long"],
            "dest_lat": row["To_Lat"]
        } for _, row in df_batch.iterrows()]
    }

    with open(FILE_PATH, 'w') as f:
        json.dump(data, f, indent=4)

    with open(FILE_PATH, 'rb') as f:
        files = {'LatsLongsFile': f}

        response = requests.post(distance_url, headers=headers, files=files)

        return response

def process_single(row):
    token = get_token()
    time.sleep(2)
    headers = {
        'Authorization': f'Bearer {token}',
    }

    data = {
        "parameter": [{
            "src_lng": row["From_Long"],
            "src_lat": row["From_Lat"],
            "dest_lng": row["To_Long"],
            "dest_lat": row["To_Lat"]
        }]
    }

    with open(FILE_PATH, 'w') as f:
        json.dump(data, f, indent=4)

    with open(FILE_PATH, 'rb') as f:
        files = {'LatsLongsFile': f}

        response = requests.post(distance_url, headers=headers, files=files)
        return response

batch_size = 30
total_rows = len(df7)
num_batches = (total_rows + batch_size - 1) // batch_size

dist3 = []

for batch_num in range(num_batches):
    start_idx = batch_num * batch_size
    end_idx = min((batch_num + 1) * batch_size, total_rows)
    df_batch = df7.iloc[start_idx:end_idx]

    response = process_batch(df_batch)
    if response.status_code == 200:
        response_json = response.json()
        if 'data' in response_json and all('distance' in row_data for row_data in response_json['data']):
            for row_data, (_, row) in zip(response_json['data'], df_batch.iterrows()):
                distance = row_data['distance']
                dist3.append(distance)
        else : 
            for _, row in df_batch.iterrows():
                single_response = process_single(row)
                if single_response.status_code == 200:
                    single_json = single_response.json()
                    if 'data' in single_json and single_json['data']:
                        distance = single_json['data'][0].get('distance', -1)
                        dist3.append(distance)
                    else:
                        dist3.append(-1)
                else:
                    dist3.append(-1) 
    # else: 
    #     source3 = df_batch['From_ID']  
    #     destination3 = df_batch['To_ID']
    #     BingMapsKey = "AirsAsdRojcMdt_sHviub_uETiraB-on6DR3Q_AVyrOCedF0FkITbpVVSDKx6hjT"  # Bing Map Key
    #     df_batch["Warehouse_lat_long"]= df7['From_Lat'].astype(str) + ',' + df7['From_Long'].astype(str)
    #     df_batch["FPS_lat_long"]= df7['To_Lat'].astype(str) + ',' + df7['To_Long'].astype(str)

    #     df8 = df_batch[['From_ID', 'To_ID', 'Warehouse_lat_long', 'FPS_lat_long']]
    #     source3 = df8['From_ID']
    #     destination3 = df8['To_ID']

    #     for index, row in df8.iterrows():
    #         origin = row["Warehouse_lat_long"]
    #         dest = row["FPS_lat_long"]
    #         max_retries = 3
    #         retries = 0
    #         while retries < max_retries:
    #             try:
    #                 response = requests.get(
    #                     "https://dev.virtualearth.net/REST/v1/Routes/DistanceMatrix?origins=" + origin + "&destinations=" + dest +
    #                     "&travelMode=driving&key=" + BingMapsKey)
    #                 resp = response.json()

    #                 dist3.append(resp['resourceSets'][0]['resources'][0]['results'][0]['travelDistance'])
    #                 break 
    #             except (requests.ConnectionError, requests.Timeout):
    #                 retries += 1
    #                 time.sleep(1)

df7["Distance"]=dist3
df9=df6.loc[df6['Distance'] != "shallu"]
df9 = df9.loc[:, [
        'Scenario',
        'From',
        'From_State',
        'From_District',
        'From_ID',
        'From_Name',
        'From_Lat',
        'From_Long',
        'To',
        'To_ID',
        'To_Name',
        'To_State',
        'To_District',
        'To_Lat',
        'To_Long',
        'commodity',
        'quantity',
        'Distance']]
df7 = df7.loc[:, [
        'Scenario',
        'From',
        'From_State',
        'From_District',
        'From_ID',
        'From_Name',
        'From_Lat',
        'From_Long',
        'To',
        'To_ID',
        'To_Name',
        'To_State',
        'To_District',
        'To_Lat',
        'To_Long',
        'commodity',
        'quantity',
        'Distance']]

df10 = pd.concat([df9, df7], ignore_index=True)
result = ((df10['quantity']) * df10['Distance']).sum()

df10.to_excel('Backend//Result_Sheet.xlsx', sheet_name='Warehouse_FPS', index=False)
           

print("Optimization is done")

df10 = pd.concat([df9, df7], ignore_index=True)
result = ((df10['quantity']) * df10['Distance']).sum()

df10.to_excel('Backend//Result_Sheet.xlsx', sheet_name='Warehouse_FPS', index=False)
