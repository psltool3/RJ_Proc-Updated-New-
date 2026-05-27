import os
import re

frontend_files = [
    'pds_admin_raj/PCAdd.php',
    'pds_admin_raj/PCEdit.php',
    'pds_admin_raj/WarehouseAdd.php',
    'pds_admin_raj/WarehouseEdit.php',
    'pds_district_raj/MillAdd.php',
    'pds_district_raj/MillEdit.php',
    'pds_district_raj/PCAdd.php',
    'pds_district_raj/PCEdit.php',
    'pds_district_raj/WarehouseAdd.php',
    'pds_district_raj/WarehouseEdit.php'
]

def update_frontend(file_path):
    if not os.path.exists(file_path):
        print(f"File not found: {file_path}")
        return
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    modified = False
    
    if 'id="name"' in content and 'pattern="^[a-zA-Z0-9_\\-\\s]+$"' not in content:
        content = re.sub(
            r'(<input[^>]+id="name"[^>]*?)(/?>)', 
            r'\1 pattern="^[a-zA-Z0-9_\\-\\s]+$" title="Only characters, numbers, underscores, hyphens, and spaces are allowed"\2', 
            content
        )
        modified = True
    
    if 'id="id"' in content and 'pattern="^[a-zA-Z0-9_\\-]+$"' not in content:
        content = re.sub(
            r'(<input[^>]+id="id"[^>]*?)(/?>)', 
            r'\1 pattern="^[a-zA-Z0-9_\\-]+$" title="Only characters, numbers, underscores, and hyphens are allowed (no spaces)"\2', 
            content
        )
        modified = True

    validation_js = """
            var nameVal = document.getElementById('name').value;
            var nameRegex = /^[a-zA-Z0-9_\\-\\s]+$/;
            if (!nameRegex.test(nameVal)) {
                alert('Name should only contain characters, numbers, underscores, hyphens, and spaces.');
                return false;
            }
            var idVal = document.getElementById('id').value;
            var idRegex = /^[a-zA-Z0-9_\\-]+$/;
            if (!idRegex.test(idVal)) {
                alert('ID should only contain characters, numbers, underscores, and hyphens (no spaces).');
                return false;
            }
"""
    if "nameRegex.test" not in content and "document.getElementById('popup').style.display" in content:
        content = content.replace("document.getElementById('popup').style.display = 'block';", validation_js + "            document.getElementById('popup').style.display = 'block';")
        modified = True

    if modified:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Updated {file_path}")

for f in frontend_files:
    update_frontend(f)
