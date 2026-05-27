import os
import re

api_files = [
    'pds_admin_raj/api/PCAdd.php',
    'pds_admin_raj/api/PCEdit.php',
    'pds_admin_raj/api/WarehouseAdd.php',
    'pds_admin_raj/api/WarehouseEdit.php',
    'pds_district_raj/api/MillAdd.php',
    'pds_district_raj/api/MillEdit.php',
    'pds_district_raj/api/PCAdd.php',
    'pds_district_raj/api/PCEdit.php',
    'pds_district_raj/api/WarehouseAdd.php',
    'pds_district_raj/api/WarehouseEdit.php'
]

def update_api(file_path):
    if not os.path.exists(file_path):
        print(f"File not found: {file_path}")
        return
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    modified = False

    name_val_php = """
if (isset($_POST["name"]) && !preg_match('/^[a-zA-Z0-9_\\- ]+$/', $_POST["name"])) {
    echo "Error : Invalid Name (only characters, numbers, underscores, hyphens, and spaces are allowed)";
    exit();
}
"""
    id_val_php = """
if (isset($_POST["id"]) && !preg_match('/^[a-zA-Z0-9_\\-]+$/', $_POST["id"])) {
    echo "Error : Invalid ID (only characters, numbers, underscores, and hyphens are allowed, with no spaces)";
    exit();
}
"""
    if "Invalid Name" not in content and "$_POST[\"name\"]" in content:
        # inject after SessionCheck
        if "if(!SessionCheck())" in content:
            # find closing brace
            pos = content.find("if(!SessionCheck())")
            close_brace = content.find("}", pos)
            content = content[:close_brace+1] + "\n" + name_val_php + id_val_php + content[close_brace+1:]
            modified = True
            
    # Also update formatName
    if "function formatName" in content:
        if "preg_replace('/[^a-zA-Z0-9_ ]/'" in content:
            content = content.replace("preg_replace('/[^a-zA-Z0-9_ ]/'", "preg_replace('/[^a-zA-Z0-9_\\- ]/'")
            modified = True
        elif "preg_replace('/[^a-zA-Z0-9_]/'" in content:
            content = content.replace("preg_replace('/[^a-zA-Z0-9_]/'", "preg_replace('/[^a-zA-Z0-9_\\- ]/'")
            modified = True

    if modified:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Updated {file_path}")

for f in api_files:
    update_api(f)
