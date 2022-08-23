; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!

[Setup]
AppName= iTu
AppVerName= iTu_2H_M100_4720
AppPublisher=iTu
AppId={{B73337D5-DB31-4442-8A1E-D513CAE01DF7}}
AppPublisherURL=http://www.iTu.com
AppSupportURL=http://www.iTu.com
AppUpdatesURL=http://www.iTu.com
DefaultDirName={pf}\iTuM100
DefaultGroupName= iTu
;LicenseFile=F:\Publish\BetterPrinter\License\CN\License.txt
;InfoBeforeFile=F:\Publish\BetterPrinter\License\CN\Readme.txt
OutputDir=E:\Publish\Result
OutputBaseFilename= iTu_2H_M100_4720
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
Source: "E:\Program Files (x86)\BetterPrinter 5113(4720)-2H-1.1\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;USB����,���ݲ�ͬ��ϵͳ��װ��ͬ��������
[Types]
;Name: Full ;Description:"Ĭ�ϰ�װ";
;Name: Compact ;Description:"��లװ";
;Name: Custom; Description:"�Զ��尲װ"; Flags: iscustom            {0318605F-D236-422B-9470-2FD595618F5B}
[Components]
;��Ӱ�װ��ѡ��
;Name: main; Description:"������(��ѡ)";Types:full compact custom;Flags: fixed
;Name: data; Description:"�����ļ�";Types:full
;Name: help;Description:"�����ļ�";Types:full
Name: LCSM; Description: "iTuM100"; Flags:exclusive disablenouninstallwarning
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
Filename: "{app}\BetterPrinter.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.iTu.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.iTu.com/cn/post.asp"

[Icons]
Name: "{group}\BetterPrinter.exe"; Filename: "{app}\BetterPrinter.exe"; WorkingDir: "{app}"
;Name: "{group}\BetterPrinter.chm"; Filename: "{app}\BetterPrinter.chm"
Name: "{group}\{cm:ProgramOnTheWeb,BetterPrinter}"; Filename: "{app}\BetterPrinter.url"
Name: "{group}\{cm:UninstallProgram,BetterPrinter}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\iTuM100"; Filename: "{app}\BetterPrinter"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\BetterPrinter.exe"; Filename: "{app}\BetterPrinter.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]

[Run]
Filename: "{app}\vc_runtime\MSVBCRT AIO 2017.03.13 X86 X64"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\vc_runtime\MSVBCRT AIO 2017.03.13 X86 X64"; Flags: waituntilterminated;Check:Isx64
Filename: "{app}\usb device\32bit\setup(X86).exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\usb device\64bit\setup(X64).exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\����˵��.txt"; Description: "����˵��"; Flags: postinstall shellexec skipifsilent
;��װ��ɺ�ɾ���ļ����ļ��� 
;Filename: "{cmd}"; Parameters: "/c del ""{app}\temp\cn\langCfg.ini"""; Flags: hidewizard runhidden
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\en"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\cn"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\en"""; Flags: hidewizard runhidden; 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\cn"""; Flags: hidewizard runhidden; 
[UninstallDelete]
Type: files; Name: "{app}\BetterPrinter.url"
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
