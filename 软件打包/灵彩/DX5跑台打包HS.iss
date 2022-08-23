; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!

[Setup]
AppName= �������
AppVerName=PrintExp ��̨DX_5
AppPublisher=Hosonsoft
AppPublisherURL=http://www.hosonsoft.com
AppSupportURL=http://www.hosonsoft.com
AppUpdatesURL=http://www.hosonsoft.com
DefaultDirName={pf}\�������
DefaultGroupName= �������
;LicenseFile=F:\Publish\PrintExp\License\CN\License.txt
;InfoBeforeFile=F:\Publish\PrintExp\License\CN\Readme.txt
OutputDir=E:\Publish\Result
OutputBaseFilename= ��̨DX_5
SolidCompression=yes
;��װ���򽫲���ʾ����ӭ����ҳ ,����Ϊ yes
;DisableWelcomePage  = yes

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"
Name: "eng"; MessagesFile: "compiler:languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]


;USB����,���ݲ�ͬ��ϵͳ��װ��ͬ��������
Source: "E:\Program Files\PrintExp\USB Device\PrinterDrv.inf"; DestDir: "{win}\inf\"; Check: Isx64;
Source: "E:\Program Files\PrintExp\USB Device\PrinterDrv.sys"; DestDir: "{sys}\drivers\"; Check: Isx64;
Source: "E:\Program Files\PrintExp\USB Device\PrinterDrv.inf"; DestDir: "{win}\inf\"; Check: Isx86;
Source: "E:\Program Files\PrintExp\USB Device\PrinterDrv.sys"; DestDir: "{sys}\drivers\"; Check: Isx86;
Source: "E:\Program Files\PrintExp\USB Device\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\Program Files\PrintExp\USB Device\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

;�����û�ѡ��װ
Source: "E:\Program Files\PrintExp\language\langCfg.ini";Languages : cn; DestDir: "{app}\language"; Flags: ignoreversion
Source: "E:\Program Files\PrintExp\GenData\vmpc.cf"; Languages : cn; DestDir: "{app}\GenData"; Flags: ignoreversion;Components:HZYLKJ
Source: "E:\Program Files\PrintExp\CleanProcessSettings.exe"; Languages : cn; DestDir: "{app}"; Flags: ignoreversion;Components:HZYLKJ
Source: "E:\Program Files\PrintExp\awClearTest.exe"; Languages : cn; DestDir: "{app}"; Flags: ignoreversion;Components: HZYLKJ
    ;ѡ��Ӣ�İ�װ
Source: "E:\Program Files\PrintExp\language\langCfg.ini";Languages : eng; DestDir: "{app}\language"; Flags: ignoreversion
Source: "E:\Program Files\PrintExp\GenData\vmpc.cf"; Languages : eng; DestDir: "{app}\GenData"; Flags: ignoreversion;Components: HZYLKJ
Source: "E:\Program Files\PrintExp\CleanProcessSettings.exe"; Languages : eng; DestDir: "{app}"; Flags: ignoreversion;Components: HZYLKJ
Source: "E:\Program Files\PrintExp\awClearTest.exe"; Languages : eng; DestDir: "{app}"; Flags: ignoreversion;Components: HZYLKJ
Source: "E:\Program Files\PrintExp\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: HZYLKJ

[Types]
;Name: Full ;Description:"Ĭ�ϰ�װ";
;Name: Compact ;Description:"��లװ";
;Name: Custom; Description:"�Զ��尲װ"; Flags: iscustom            {0318605F-D236-422B-9470-2FD595618F5B}
[Components]
;��Ӱ�װ��ѡ��
;Name: main; Description:"������(��ѡ)";Types:full compact custom;Flags: fixed
;Name: data; Description:"�����ļ�";Types:full
;Name: help;Description:"�����ļ�";Types:full
Name: HZYLKJ; Description: "�������"; Flags:exclusive disablenouninstallwarning
  ;Name: SKY4180\EPSON_8H4C; Description: "EPSON_8H4C"; Flags:checkablealone  disablenouninstallwarning
  ;Name: SKY4180\EPSON_16H4C; Description: "EPSON_16H4C"; Flags:checkablealone  disablenouninstallwarning
  ;Name: SKY6160; Description: "SKY6160"; Flags:exclusive disablenouninstallwarning
  ;Name: SKY6160\EPSON_8H4C; Description: "EPSON_8H4C"; Flags:checkablealone  disablenouninstallwarning
  ;Name: SKY6160\EPSON_16H4C; Description: "EPSON_16H4C"; Flags:checkablealone  disablenouninstallwarning
  ;Name: SKY9160; Description: "SKY9160"; Flags:exclusive  disablenouninstallwarning
  ;Name: SKY9160\EPSON_8H4C; Description: "EPSON_8H4C"; Flags:checkablealone   disablenouninstallwarning
  ;Name: GS508\6H6C; Description: "6H6C"; Flags:checkablealone   disablenouninstallwarning
  ;Name: GS508\8H8C; Description: "8H8C"; Flags:checkablealone   disablenouninstallwarning
  ;Name: SKY-6160-2; Description: "SKY-6160-2"; Flags:exclusive  disablenouninstallwarning
  ;Name: SKY-9160; Description: "SKY-9160"; Flags:exclusive  disablenouninstallwarning

[INI]
Filename: "{app}\PrintExp.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.hosonsoft.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.hosonsoft.com/cn/post.asp"

[Icons]
Name: "{group}\PrintExp.exe"; Filename: "{app}\PrintExp.exe"; WorkingDir: "{app}"
;Name: "{group}\PrintExp.chm"; Filename: "{app}\PrintExp.chm"
Name: "{group}\{cm:ProgramOnTheWeb,PrintExp}"; Filename: "{app}\PrintExp.url"
Name: "{group}\{cm:UninstallProgram,PrintExp}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\�������"; Filename: "{app}\PrintExp"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\PrintExp.exe"; Filename: "{app}\PrintExp.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]

[Run]
Filename: "{app}\VC_x86Runtime\VC_x86Runtime.exe"; Flags: waituntilterminated
Filename: "{app}\USB Device\32bit\setup.exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\USB Device\64bit\setup.exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\����˵��.txt"; Description: "����˵��"; Flags: postinstall shellexec skipifsilent
;��װ��ɺ�ɾ���ļ����ļ��� 
;Filename: "{cmd}"; Parameters: "/c del ""{app}\temp\cn\langCfg.ini"""; Flags: hidewizard runhidden
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\en"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\cn"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\en"""; Flags: hidewizard runhidden; 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\cn"""; Flags: hidewizard runhidden; 
[UninstallDelete]
Type: files; Name: "{app}\PrintExp.url"
;Type: filesandordirs; Name: "{app}"
[Code]
function IsX64: Boolean;
begin
  Result := IsWin64 and (ProcessorArchitecture = paX64);
end;

function IsIA64: Boolean;
begin
  Result := IsWin64 and (ProcessorArchitecture = paIA64);
end;

function Isx86: Boolean;
begin
  Result := not IsWin64;
end;
