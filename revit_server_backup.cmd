chcp 65001 >nul

set listfile=C:\scripts\revit_server_projects.txt

if exist %listfile% del %listfile% /q/f

python "C:\scripts\revit_server_backup.py"

for /f  "eol=; tokens=* delims=" %%1 in (C:\scripts\revit_server_projects.txt) do C:\scripts\revit_server_bak.cmd "%%1"