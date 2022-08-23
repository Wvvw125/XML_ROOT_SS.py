脚本由 Inno Setup 脚本向导 生成！
; 有关创建 Inno Setup 脚本文件的详细资料请查阅帮助文档！

[Setup]
AppName=Visual C++ 6.0（完整绿色版）
AppVerName=Visual C++ 6.0（完整绿色版）Build 2010_04_03
AppPublisher=二级C语言加油站
AppPublisherURL=http://hi.baidu.com/jsj08
AppSupportURL=http://hi.baidu.com/jsj08
AppUpdatesURL=http://hi.baidu.com/jsj08
DefaultDirName={pf}\Microsoft Visual Studio
DefaultGroupName=Visual C++ 6.0（完整绿色版）
InfoBeforeFile=D:\vc\new\vc6_full.rtf
DisableProgramGroupPage=yes
OutputDir=d:\My Documents\pptFlash
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinese"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "C:\Program Files\Microsoft Visual Studio\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\ccroot\system32\noreg\*"; DestDir: "{sys}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\ccroot\system32\reg\*"; DestDir: "{sys}"; CopyMode: alwaysskipifsameorolder; Flags: restartreplace sharedfile regserver
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\DevStudio\6.0"; Flags: deletekey uninsdeletekey
Root: HKCR; Subkey: ".c"; ValueType: String; ValueData: "c_file";Flags: uninsdeletekey
Root: HKCR; Subkey: "c_file"; ValueType: String; ValueData: "c_file";Flags: uninsdeletekey
Root: HKCR; Subkey: "c_file\shell\open\command"; ValueType: String; ValueData: "{app}\Common\MSDev98\Bin\msdev.exe ""%1""";Flags: uninsdeletekey
Root: HKCR; Subkey: ".cpp"; ValueType: String; ValueData: "c_file";Flags: uninsdeletekey
Root: HKCR; Subkey: "c_cppfile"; ValueType: String; ValueData: "c_cppfile";Flags: uninsdeletekey
Root: HKCR; Subkey: "c_cppfile\shell\open\command"; ValueType: String; ValueData: "{app}\Common\MSDev98\Bin\msdev.exe ""%1""";Flags: uninsdeletekey

[Registry]
Root: HKCR; Subkey: "Real 媒体文件"; ValueType: String; ValueData: "Real 媒体文件";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real 媒体文件\DefaultIcon"; ValueType: String; ValueData: "{app}\abc.ICO";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real 媒体文件\shell\open\command"; ValueType: String; ValueData: "{app}\myplayer.exe %1";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real 媒体文件\shell\用 My Player 打开(&O)\command"; ValueType: String; ValueData: "{app}\myplayer.exe %1";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.rmvb"; ValueType: String; ValueData: "Real 媒体文件";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.rm"; ValueType: String; ValueData: "Real 媒体文件";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.ra"; ValueType: String; ValueData: "Real 媒体文件";Flags: uninsdeletekey

[Registry]

Root: HKLM; Subkey: "SOFTWARE\Thunder Network\ThunderOem\thunder_backwnd"; ValueName: "Path"; ValueType: String; ValueData: "{app}\Thunder.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Thunder Network\ThunderOem\thunder_backwnd"; ValueName: "Version"; ValueType: String; ValueData: "5.7.2.371"; Flags: uninsdeleteke
Root: HKCU; Subkey: "Software\Microsoft\Internet Explorer\MenuExt\使用迅雷下载全部链接"; ValueType: String; ValueData: "{app}\Program\GetAllUrl.htm"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Microsoft\Internet Explorer\MenuExt\使用迅雷下载全部链接"; ValueName: "Contexts"; ValueType: dword; ValueData: 243; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Microsoft\Internet Explorer\MenuExt\使用迅雷下载"; ValueType: String; ValueData: "{app}\Program\GetUrl.htm"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Microsoft\Internet Explorer\MenuExt\使用迅雷下载"; ValueName: "Contexts"; ValueType: dword; ValueData: 34; Flags: uninsdeletevalue


[Icons]
Name: "{group}\Visual C++ 6.0（完整绿色版）"; Filename: "{app}\Common\MSDev98\Bin\msdev.exe"
Name: "{group}\测试程序test.cpp"; Filename: "{app}\test.cpp"
Name: "{group}\使用必读"; Filename: "{app}\使用必读.txt"
Name: "{group}\通用补丁 for vc6"; Filename: "{app}\vc6通用补丁.reg"
Name: "{group}\{cm:ProgramOnTheWeb,二级C语言加油站}"; Filename: "http://hi.baidu.com/jsj08"
Name: "{group}\{cm:UninstallProgram,Visual C++ 6.0（完整绿色版）}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Visual C++ 6.0"; Filename: "{app}\Common\MSDev98\Bin\msdev.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Common\MSDev98\Bin\msdev.exe"; Description: "{cm:LaunchProgram,Visual C++ 6.0（完整绿色版）}"; Flags: nowait postinstall skipifsilent
