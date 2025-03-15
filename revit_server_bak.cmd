set badpath=%1
set rvtroot=%badpath:~1,-1%
set unctarget=C:\RevitServerBackup\
set bakdst="%unctarget%%rvtroot%"

"C:\Program Files\Autodesk\Revit Server 2024\Tools\RevitServerToolCommand\RevitServerTool.exe" createLocalRVT %1 -s 192.168.0.107 -d %bakdst% -o