import os
import re

bulk_files = [
    'pds_admin_raj/api/BulkPCData.php',
    'pds_admin_raj/api/BulkPCDataEdit.php',
    'pds_admin_raj/api/BulkWarehouseData.php',
    'pds_admin_raj/api/BulkWarehouseDataEdit.php',
    'pds_district_raj/api/BulkMillData.php',
    'pds_district_raj/api/BulkMillDataEdit.php',
    'pds_district_raj/api/BulkPCData.php',
    'pds_district_raj/api/BulkPCDataEdit.php',
    'pds_district_raj/api/BulkWarehouseData.php',
    'pds_district_raj/api/BulkWarehouseDataEdit.php'
]

def update_bulk(file_path):
    if not os.path.exists(file_path):
        print(f"File not found: {file_path}")
        return
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    modified = False
    
    # 1. Update ID regex if it exists
    if "preg_match('/^[A-Za-z0-9]+$/', $column[$id])" in content:
        content = content.replace("preg_match('/^[A-Za-z0-9]+$/', $column[$id])", "preg_match('/^[a-zA-Z0-9_\\-]+$/', $column[$id])")
        modified = True
    elif "preg_match('/^[A-Za-z0-9_\-]+$/'" in content:
        content = re.sub(r"preg_match\('/[A-Za-z0-9_\-]+$/'", r"preg_match('/^[a-zA-Z0-9_\\-]+$/'", content)
        modified = True
    else:
        # If no ID check exists, inject it. Find "if ($i == 0)" and go to the "else" block.
        # Actually it's easier to inject right before `if (!($column[$active] == 0`
        if "if (!($column[$active] == 0" in content:
            id_check = """
            if (!isset($column[$id]) || !preg_match('/^[a-zA-Z0-9_\\-]+$/', $column[$id])) {
                echo "Error: ID should only contain characters, numbers, underscores, and hyphens (no spaces): " . ($column[$id] ?? 'Missing');
                echo "<br>";
                $redirect = 0;
            }
"""
            if "characters, numbers, underscores, and hyphens (no spaces)" not in content:
                content = content.replace("if (!($column[$active] == 0", id_check.lstrip() + "\n            if (!($column[$active] == 0")
                modified = True
        
    # 2. Inject Name check
    name_check = """
            if (!isset($column[$name]) || !preg_match('/^[a-zA-Z0-9_\\- ]+$/', $column[$name])) {
                echo "Error: Name should only contain characters, numbers, underscores, hyphens, and spaces: " . ($column[$name] ?? 'Missing');
                echo "<br>";
                $redirect = 0;
            }
"""
    if "hyphens, and spaces" not in content and "$column[$name]" in content:
        # Inject right before `if (!($column[$active] == 0`
        if "if (!($column[$active] == 0" in content:
            content = content.replace("if (!($column[$active] == 0", name_check.lstrip() + "\n            if (!($column[$active] == 0")
            modified = True

    if modified:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Updated {file_path}")

for f in bulk_files:
    update_bulk(f)
