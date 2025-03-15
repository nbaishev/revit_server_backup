chcp 65001 >nul

set listfile=C:\scripts\revit_server_projects.txt

if exist %listfile% del %listfile% /q/f

for /R "C:\ProgramData\Autodesk\Revit Server 2024\Projects" %%f in (*.rvt) do (
	set tmp=%%~pf
	setlocal enableDelayedExpansion

	echo !tmp:~49,-1! >> %listfile%	
	endlocal
)

CScript //H:CScript
CScript "C:\Windows\System32\replacetext.vbs" //B %listfile% ".rvt 	" ".rvt"

for /f  "eol=; tokens=* delims=" %%1 in (C:\scripts\revit_server_projects.txt) do C:\scripts\revit_server_bak.cmd "%%1"