�ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

[Setup]
AppName=Visual C++ 6.0��������ɫ�棩
AppVerName=Visual C++ 6.0��������ɫ�棩Build 2010_04_03
AppPublisher=����C���Լ���վ
AppPublisherURL=http://hi.baidu.com/jsj08
AppSupportURL=http://hi.baidu.com/jsj08
AppUpdatesURL=http://hi.baidu.com/jsj08
DefaultDirName={pf}\Microsoft Visual Studio
DefaultGroupName=Visual C++ 6.0��������ɫ�棩
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
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\DevStudio\6.0"; Flags: deletekey uninsdeletekey
Root: HKCR; Subkey: ".c"; ValueType: String; ValueData: "c_file";Flags: uninsdeletekey
Root: HKCR; Subkey: "c_file"; ValueType: String; ValueData: "c_file";Flags: uninsdeletekey
Root: HKCR; Subkey: "c_file\shell\open\command"; ValueType: String; ValueData: "{app}\Common\MSDev98\Bin\msdev.exe ""%1""";Flags: uninsdeletekey
Root: HKCR; Subkey: ".cpp"; ValueType: String; ValueData: "c_file";Flags: uninsdeletekey
Root: HKCR; Subkey: "c_cppfile"; ValueType: String; ValueData: "c_cppfile";Flags: uninsdeletekey
Root: HKCR; Subkey: "c_cppfile\shell\open\command"; ValueType: String; ValueData: "{app}\Common\MSDev98\Bin\msdev.exe ""%1""";Flags: uninsdeletekey

[Registry]
Root: HKCR; Subkey: "Real ý���ļ�"; ValueType: String; ValueData: "Real ý���ļ�";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real ý���ļ�\DefaultIcon"; ValueType: String; ValueData: "{app}\abc.ICO";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real ý���ļ�\shell\open\command"; ValueType: String; ValueData: "{app}\myplayer.exe %1";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real ý���ļ�\shell\�� My Player ��(&O)\command"; ValueType: String; ValueData: "{app}\myplayer.exe %1";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.rmvb"; ValueType: String; ValueData: "Real ý���ļ�";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.rm"; ValueType: String; ValueData: "Real ý���ļ�";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.ra"; ValueType: String; ValueData: "Real ý���ļ�";Flags: uninsdeletekey

[Registry]

Root: HKLM; Subkey: "SOFTWARE\Thunder Network\ThunderOem\thunder_backwnd"; ValueName: "Path"; ValueType: String; ValueData: "{app}\Thunder.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Thunder Network\ThunderOem\thunder_backwnd"; ValueName: "Version"; ValueType: String; ValueData: "5.7.2.371"; Flags: uninsdeleteke
Root: HKCU; Subkey: "Software\Microsoft\Internet Explorer\MenuExt\ʹ��Ѹ������ȫ������"; ValueType: String; ValueData: "{app}\Program\GetAllUrl.htm"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Microsoft\Internet Explorer\MenuExt\ʹ��Ѹ������ȫ������"; ValueName: "Contexts"; ValueType: dword; ValueData: 243; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Microsoft\Internet Explorer\MenuExt\ʹ��Ѹ������"; ValueType: String; ValueData: "{app}\Program\GetUrl.htm"; Flags: uninsdeletevalue
Root: HKCU; Subkey: "Software\Microsoft\Internet Explorer\MenuExt\ʹ��Ѹ������"; ValueName: "Contexts"; ValueType: dword; ValueData: 34; Flags: uninsdeletevalue


[Icons]
Name: "{group}\Visual C++ 6.0��������ɫ�棩"; Filename: "{app}\Common\MSDev98\Bin\msdev.exe"
Name: "{group}\���Գ���test.cpp"; Filename: "{app}\test.cpp"
Name: "{group}\ʹ�ñض�"; Filename: "{app}\ʹ�ñض�.txt"
Name: "{group}\ͨ�ò��� for vc6"; Filename: "{app}\vc6ͨ�ò���.reg"
Name: "{group}\{cm:ProgramOnTheWeb,����C���Լ���վ}"; Filename: "http://hi.baidu.com/jsj08"
Name: "{group}\{cm:UninstallProgram,Visual C++ 6.0��������ɫ�棩}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Visual C++ 6.0"; Filename: "{app}\Common\MSDev98\Bin\msdev.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Common\MSDev98\Bin\msdev.exe"; Description: "{cm:LaunchProgram,Visual C++ 6.0��������ɫ�棩}"; Flags: nowait postinstall skipifsilent
