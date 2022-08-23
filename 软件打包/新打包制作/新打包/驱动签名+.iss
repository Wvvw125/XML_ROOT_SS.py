#define MyAppNameStep "SMQH Drivers"
#define MyAppSoure "..\"
[Setup]
AppId={{D18BE24C-17FA-43FE-B107-429BF9B4906C}
AppName={#MyAppNameStep}
 
[Files]
;将所需文件复制到指定位置
Source: "{#MyAppSoure}\Tool\DPInst\DPInst64.exe"; DestDir: "{sys}"; DestName: DPInst.exe;Flags: ignoreversion recursesubdirs createallsubdirs;Check: Is64BitInstallMode
Source: "{#MyAppSoure}\Tool\DPInst\DPInst64.exe"; DestDir: "{app}"; DestName: DPInst.exe;Flags: ignoreversion recursesubdirs createallsubdirs;Check: Is64BitInstallMode
Source: "{#MyAppSoure}\Tool\Devcon\devconWin10x64.exe"; DestDir: "{sys}"; DestName: Devcon.exe;Flags: ignoreversion recursesubdirs createallsubdirs;Check: Is64BitInstallMode
Source: "{#MyAppSoure}\Tool\Devcon\devconWin10x64.exe"; DestDir: "{app}"; DestName: Devcon.exe;Flags: ignoreversion recursesubdirs createallsubdirs;Check: Is64BitInstallMode
;将关键文件复制到特定位置
Source: "{#MyAppSoure}\DriverFile\SMQH\x64\*"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs;          Check: Is64BitInstallMode
Source: "{#MyAppSoure}\DriverFile\SMQH\x64\my.sys"; DestDir: "{sys}\drivers"; Flags: ignoreversion recursesubdirs createallsubdirs;  Check: Is64BitInstallMode
Source: "{#MyAppSoure}\DriverFile\SMQH\x64\my.inf"; DestDir: "{win}\inf"; Flags: ignoreversion recursesubdirs createallsubdirs;    Check: Is64BitInstallMode
[Run]
Filename: "{sys}\DPInst.exe"; WorkingDir: {app};Parameters: "/path ""{app}"" /sw /se ";Check: Is64BitInstallMode 

