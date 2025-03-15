set badpath=%1
set rvtroot=%badpath:~1,-1%
set unctarget=C:\RevitServerBackup\
set revit_server_name=192.168.0.116
set bakdst="%unctarget%%rvtroot%"

"C:\Program Files\Autodesk\Revit Server 2024\Tools\RevitServerToolCommand\RevitServerTool.exe" createLocalRVT %1 -s %revit_server_name% -d %bakdst% -o