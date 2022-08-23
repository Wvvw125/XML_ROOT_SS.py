#define MyAppNameStep "SMQH Drivers"
#define MyAppSoure "..\"

[Setup]
AppId={{D18BE24C-17FA-43FE-B107-429BF9B4906C}
AppName={#MyAppNameStep}

[Files]
;将所需文件复制到指定位置
;将关键文件复制到特定位置
Source: "{#MyAppSoure}\DriverFile\SMQH\x64\*"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs;          Check: Is64BitInstallModeSource: 
Source:"{#MyAppSoure}\DriverFile\SMQH\x64\my.sys"; DestDir: "{sys}\drivers"; Flags: ignoreversion recursesubdirs createallsubdirs;  Check: Is64BitInstallModeSource: 
Source:"{#MyAppSoure}\DriverFile\SMQH\x64\my.inf"; DestDir: "{win}\inf"; Flags: ignoreversion recursesubdirs createallsubdirs;    Check: Is64BitInstallMode[Run]Filename: 
Source:"{sys}\DPInst.exe"; WorkingDir: {app};Parameters: "/path ""{app}"" /sw /se ";Check: Is64BitInstallMode 

