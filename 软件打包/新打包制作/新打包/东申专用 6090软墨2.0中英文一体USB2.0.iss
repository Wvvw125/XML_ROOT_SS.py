#define MyAppName "BetterPrinterApp"                                       ;���г�����
#define MyAppPublisher "�����ӡ"                    ;������
#define MyAppVersion "2.0.0.0.|.1.0.0.71"                                      ;�汾��    2.0.0.0._.1.0.0.47
#define MyAppExeName "PL-Printer.exe"                           ;���г���
#define OutPutName "TX800_6090_W2HC_6C1.0.0.71"            ;����ļ���
#define AppVerName  "BetterPrinterApp 2.0"                                ;ϵͳ���������
#define DirName "D:\PL-Printer_Tx800_6090"                                   ;��װĿ¼��
#define InPutFile"F:\�ۺ���ϵ��\�������ͻ�����⡿����\V2.0ƽ̨\����\��������\BetterPrinterApp_PB_6C_6090_3"  
#define AppHeight "420"        ;��
#define AppWidth  "620"        ;��
#define DataPort  "USB2.0"         ;���ݶ˿� 
#define SKIN_chose "1"                                   ;   [skin ]  cur=1    0     default    1 Gray         [config]  clean=Clean_6.xml
#define Appplat "MSVBCRT AIO 2017.03.13 X86 X64.exe"  
#define USBdevice"Device 2.0.exe"     

#define AppID"BetterPrinterApp 2.0"                 ;{94663D78-3A80-47FE-A474-2ED2CB91C82D}
#define OutPutFile "D:\Publish\Result"
#define MyAppURL ""
#define MyAppAssocName  MyAppName + " �ļ�"
#define MyAppAssocExt "" 
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt
#define  LicenseFileCN  "F:\wwx\����\����ز�\���Э��\CN.txt"
#define  LicenseFileEN  "F:\wwx\����\����ز�\���Э��\EN.txt"
#define  IconFile"F:\wwx\����\����ز�\ico\BetterPrinter.ico"

[Setup]
AppId= {#AppID}
AppName= {#MyAppName}
AppVerName= {#AppVerName}
AppVersion={# MyAppVersion}
//��Ȩ��
versioninfocopyright=Copyright(c) 2021
//��˾����                                                                                                                                           
;VersionInfoCompany=
//�汾��
VersionInfoVersion={# MyAppVersion} VersionInfoProductTextVersion=��//VersionInfoCopyright=
AppPublisher={# MyAppPublisher} 
AppPublisherURL={# MyAppURL}
AppSupportURL={# MyAppURL}
AppUpdatesURL={# MyAppURL}
//Ŀ¼����
DefaultDirName={#DirName}  
DefaultGroupName= {#MyAppName}
;LicenseFile=F:\Publish\BetterPrinter\License\CN\License.txt
;InfoBeforeFile=F:\Publish\BetterPrinter\License\CN\Readme.txt
OutputDir= {#OutPutFile}
OutputBaseFilename=  {#OutPutName}
SolidCompression=no
//���г���ͼ��
SetupIconFile= {#IconFile}    
//��װ������ͼƬ
//WizardImageFile=F:\wwxʹ��\����\����ز�\ͼ1.bmp
//��װ�������ϽǱ�
WizardSmallImageFile=F:\wwx\����\����ز�\BetterPrinter.bmp
//���Э��
WizardStyle=modern
ShowLanguageDialog=yes
//����ԱȨ�ް�װ
PrivilegesRequired=admin
//��װ���򽫲���ʾ����ӭ����ҳ ,����Ϊ yes
DisableWelcomePage  = no

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"; LicenseFile:{#LicenseFileCN}
Name: "en"; MessagesFile: "compiler:Languages\English.isl" ; LicenseFile:{#LicenseFileEN}

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "{#InPutFile}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#IconFile}"; DestDir: "{win}\BetterPrinterAPPico"; Flags: ignoreversion recursesubdirs createallsubdirs
//ж�ر���  uninsneveruninstall       ϵͳ��������װ    onlyifdoesntexist
;Source: "{#InPutFile}\SoftConfig\*"; DestDir: "{app}"; Flags:  uninsneveruninstall 
;Source: "{#InPutFile}\SoftConfig\*"; DestDir: "{app}\SoftConfig"; Flags: ignoreversion recursesubdirs  createallsubdirs uninsneveruninstall      
Source: PlugIn\waterctrl.dll; Flags: dontcopy
Source: Logo\����\WizModernImage-Is.bmp; Flags: dontcopy
Source: PlugIn\callnsis.dll; Flags: dontcopy
Source: PlugIn\AdvSplash.dll; Flags: dontcopy
Source: Logo\����\logo.bmp; Flags: dontcopy
Source: Logo\logo.wav; Flags: dontcopy

[Messages]  
cn.BeveledLabel={#DataPort}
cn.ButtonNext=��һ��(&F)>
cn.ButtonBack=<����(&B)
cn.ButtonCancel=ȡ��(&C)
cn.ButtonInstall=��װ(&I)!
cn.ButtonFinish=���(&X)~~
cn.SetupWindowTitle={#MyAppName} ���ܴ�ӡϵͳ

en.BeveledLabel={#DataPort}
en.ButtonNext=NEXT(&F)>
en.ButtonBack=<BACK(&B)
en.ButtonCancel=CANCEL(&C)
en.ButtonInstall=INSTALL(&I)!
en.ButtonFinish=FINISH(&X)~~
en.SetupWindowTitle={#MyAppName} Intelligent IJP system
// CN
//���ÿ�ʼ����  
cn.WelcomeLabel1=%n��ӭ��װ {#MyAppName}��ӡϵͳ   
cn.WelcomeLabel2=%n {#MyAppName}�����ִ�ӡͷ��һ���IJPϵͳ%n%n-USB�棺����USB��{#MyAppName}����ƽ̨%n%n-ETH�棺��������{#MyAppName}����ƽ̨%n%n%n%n%n  
//�������֤Э�����  
cn.WizardLicense=���֤Э��  
cn.LicenseLabel=�ڰ�װ��{#MyAppName}��֮ǰ�����Ķ�%n��ȨЭ��  
//���ð�װ·��ѡ�����  
cn.WizardSelectDir=ѡ��װλ��  
cn.SelectDirDesc=ѡ��{#MyAppName}���İ�װ�ļ���  
cn.SelectDirLabel3=-��װ���򽫰�װ {#MyAppName} �������ļ���%n%n-Ҫ��װ�������ļ��У�����[���(R)...]��ť��ѡ�������ļ���%n%n-���[< ����(B)]��ť������һ������%n%n-ѡ��[��һ��(F) >]��ť������װ {#MyAppName}%n%n-ѡ��[ȡ��)(C)]��ť�˳� {#MyAppName} ��װ  
;CN.SelectDirBrowseLabel=  
;CN.DiskSpaceMBLabel=  
//���������װ����  
cn.WizardSelectComponents=ѡ�����  
cn.SelectComponentsDesc=ѡ������Ҫ��װ�� {#MyAppName}ϵͳ �����  
cn.SelectComponentsLabel2=��ѡ����Ҫ��װ���������������밲װ�������%n���[��һ��(F) >]��ť������  
//����׼����װ����  
cn.WizardReady=׼����װ  
cn.ReadyLabel1=��װ���򽫰�װ {#MyAppName}
//ENG
//���ÿ�ʼ����  
en.WelcomeLabel1=%nWelcome to install {#MyAppName} print system   
en.WelcomeLabel2=%n {#MyAppName} set all kinds of print heads in one IJP system %n%n-USB version: for USB port {#MyAppName} function platform %n%n-ETH version: for network port {#MyAppName} function platform%n%n%n%n%n
//�������֤Э�����  
en.WizardLicense=License Agreement  
en.LicenseLabel=Please read the %n license agreement before installing "{#MyAppName}"  
//���ð�װ·��ѡ�����  
en.WizardSelectDir=Select an Installation position  
en.SelectDirDesc=Select the "{#MyAppName}" installation folder  
en.SelectDirLabel3=-Setup will install {#MyAppName} into the following folder %n%n- To install to other folders, standalone [Browse (R)] Button and select another folder %n %n - click on the [<BACK (B)] button to return to an interface on the %n %n - choose [NEXT (F) >] {#MyAppName} {#MyAppName}%n%n-Select the [CANCEL(C) ]button to exit {#MyAppName}The installation
;ENG.SelectDirBrowseLabel=  
;ENG.DiskSpaceMBLabel=  
//���������װ����  
en.WizardSelectComponents=Select the component  
en.SelectComponentsDesc=Select the components of the {#MyAppName} system that you want to install  
en.SelectComponentsLabel2=Select the components you want to install and clear the ones you don't want to install. %n Click [Next (F) >] Button to continue.  
//����׼����װ����  
en.WizardReady=Ready to install  
en.ReadyLabel1=Setup will install {#MyAppName}

[Types]
;Name: Full ;Description:"Ĭ�ϰ�װ";
;Name: Compact ;Description:"��లװ";
;Name: Custom; Description:"�Զ��尲װ"; Flags: iscustom           
[Components]
;��Ӱ�װ��ѡ��
;Name: main; Description:"������(��ѡ)";Types:full compact custom;Flags: fixed
;Name: data; Description:"�����ļ�";Types:full
;Name: help;Description:"�����ļ�";Types:full
Name: LCSM; Description: "{#MyAppName}"; Flags:exclusive disablenouninstallwarning

[INI]
;Filename: "{app}\System\DeviceConfig.ini"; Section: "Device"; Key: "ip"; String: "0.0.0.0"; 
;Filename: "{app}\System\DeviceConfig.ini"; Section: "Device"; Key: "bufsize"; String: "512"; 
//�������ѡ��
Filename: "{app}\System\DeviceConfig.ini"; Section: "config"; Key: "Language";String:;               
;Filename: "{app}\System\DeviceConfig.ini"; Section: "config"; Key: "path"; String: "TX800&Xp600-3H-4C-WO.xml" ;
;Filename: "{app}\System\DeviceConfig.ini"; Section: "config"; Key: "clean"; String: "Clean_0.xml";

[Icons]
Name: "{group}\{#MyAppExeName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"
//��ҳ��ݷ�ʽ����
;Name: "{group}\{cm:ProgramOnTheWeb,BetterPrinter}"; Filename: "{app}\BetterPrinter.url"
Name: "{group}\{cm:UninstallProgram,BetterPrinter}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppName}"; WorkingDir: "{app}"; Tasks: desktopicon
;�������������ݱ괴��
;Name: "{userdesktop}\IP"; Filename: "{app}\IP\netscan.exe"; WorkingDir: "{app}"; Tasks: desktopicon     
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppExeName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: "{#MyAppAssocExt}"; ValueData: """{app}\{#MyAppExeName}"" "
Root:HKLM;Subkey:"Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall";ValueType: string; ValueName: "{#AppID}";ValueData:"{app}\ {#MyAppName}.exe";Flags: uninsdeletevalue

[Run]
Filename: "{app}\usb device\{#USBdevice}"; Flags: waituntilterminated;
Filename: "{app}\vc_package\{#Appplat }"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\����˵��.txt"; Description: "����˵��"; Flags: postinstall shellexec skipifsilent

[UninstallDelete]
;Type: files; Name: "{app}\BetterPrinter.url"
Type: filesandordirs; Name: "{app}"

;�������ļ���
[dirs]
// Name:"{app}\log1"

[Code]
procedure ExitProcess(exitCode:integer);
  external 'ExitProcess@kernel32.dll stdcall';

function SetUninstallIcon(iconPath:string): Boolean;   //����ж��ͼ��
var
  InstalledVersion,SubKeyName: String;
begin
if (IsWin64()) then begin
SubKeyName :=  'Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1';
    RegWriteStringValue(HKLM64,SubKeyName,'DisplayIcon','C:\Windows\BetterPrinterAPPico\BetterPrinter.ico');
  end else begin
SubKeyName :=  'Software\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1';
    RegWriteStringValue(HKLM,SubKeyName,'DisplayIcon','C:\Windows\BetterPrinterAPPico\BetterPrinter.ico');
  end;
end;

 //��������
function callplug(parentwnd: Integer; pluginname,funcname,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10: PAnsiChar): Integer;
external 'callplug@files:callnsis.dll stdcall';
//��װǰж�آ����ʹ��
function GetUninstallString(): String;      
var
  sUnInstPath: String;
  sUnInstallString: String;
begin
  sUnInstPath := ExpandConstant('Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1');
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
end;
function IsUpgrade(): Boolean;
begin
  Result := (GetUninstallString() <> '');
end;
//��װǰж�آ����ʹ��
function UnInstallOldVersion(): Integer;      
var
  sUnInstallString: String;
  iResultCode: Integer;
begin
{����ֵ:}  
{1 -ж���ַ���Ϊ��}  
{2 -ִ��UnInstallString����}  
{3 -�ɹ�ִ��UnInstallString}  
{Ĭ�Ϸ���ֵ}  
  Result := 0;
 {��ȡ��Ӧ�ó����ж���ַ���}
  sUnInstallString := GetUninstallString();
  if sUnInstallString <> '' then begin
    sUnInstallString := RemoveQuotes(sUnInstallString);
    if Exec(sUnInstallString, '/SILENT /NORESTART /SUPPRESSMSGBOXES','', SW_HIDE, ewWaitUntilTerminated, iResultCode) then
      Result := 3
    else
      Result := 2;
  end else
    Result := 1;
end;
//����
procedure AboutButtonOnClick(Sender: TObject);
begin
MsgBox('��ӭ��ʹ���ɢ������ĳ��򣬸ó�������china', mbInformation, mb_Ok);
end;

//ˮ����
function enablewater(ParentWnd: HWND; Left, Top: integer; Bmp: HBITMAP;
     WaterRadius, WaterHeight: integer): BOOL; external 'enablewater@files:waterctrl.dll stdcall';
//ParentWnd     ������Ч���ڵĸ����ھ����
//Left          ��λ��
//Top           ��λ��
//Bmp           λͼ�����
//WaterRadius   ˮ�ư뾶�����ˮ�ƿ�������Χ���㡣
//WaterHeight   ˮ�Ƹ߶ȣ����ˮ�ƿ��������
//ע�⣬ˮ�Ʋ���Զ�����ͼƬ���趨�߶ȺͿ�ȣ�
//����ˮ�Ƶ�ͼ�����Ƿ�ת��ͼƬ����ʾ��ʱ��ᷭתͼƬ����ʾ��
function waterblob(x, y: integer; radius,height: integer):BOOL; external 'waterblob@files:waterctrl.dll stdcall';
// �� x,y ������뾶Ϊradius, �߶�Ϊheight ��ˮ�ơ�
function flattenwater(): BOOL; external 'flattenwater@files:waterctrl.dll stdcall';
// ƽ������ˮ�ơ�
function disablewater(): BOOL; external 'disablewater@files:waterctrl.dll stdcall';
//�ͷ�ˮ�Ʋ��
function setwaterparent(ParentWnd:HWND): BOOL; external 'setwaterparent@files:waterctrl.dll stdcall';
//v2 ����������ˮ�Ʋ���ĸ����

//��ҳ����
function ShouldSkipPage(PageID:Integer):Boolean;
begin
if PageID=wpSelectTasks then
result:=true;
if PageID=wpSelectComponents then
result:=true;
if PageID=wpSelectProgramGroup then
result:=true;
if PageID=wpLicense then
result:=true;
end;
//wpWelcome|��ӭҳ, wpLicense|Э��ҳ, wpPassword|����ҳ, wpInfoBefore, wpUserInfo,wpSelectDir|��װĿ¼,wpSelectComponents|���ҳ, 
//wpSelectProgramGroup|��ʼ�˵�Ŀ¼ҳ,wpSelectTasks|��������|��ݷ�ʽ, wpReady, wpPreparing,wpInstalling, wpInfoAfter, wpFinished



procedure InitializeWizard(); 
var  //ˮ����
  bmp: TBitmap;
  val: Integer;
 AboutButton, CancelButton: TButton;

begin
  ExtractTemporaryFile('WizModernImage-Is.bmp');
  bmp := TBitmap.create;
  bmp.LoadFromFile(ExpandConstant('{tmp}\WizModernImage-Is.bmp'));
  enablewater(WizardForm.WelcomePage.Handle, 0, 0, bmp.Handle, 3, 50);
  //����+����
  ExtractTemporaryFile('AdvSplash.dll');
  ExtractTemporaryFile('logo.bmp');
  ExtractTemporaryFile('logo.wav');
  val:=callplug(0,ExpandConstant('{tmp}\AdvSplash.dll'),'show','2800','1400','1200','-1',ExpandConstant('{tmp}\logo'),'','','','','');

  // �� NSIS �������е��������µģ�
  // SetOutPath $TEMP                               # �������λ��Ϊ��ʱĿ¼
  // File /oname=logo.bmp "my_splash.bmp"           # �ͷ��ļ�
  // File /oname=logo.wav "my_splashshit.wav"       # �ͷ��ļ�
  // advsplash::show 2800 1400 1200 -1 $TEMP\spltmp # ���ò��
  // Pop $0                                         # ȡ����ֵ�� ���� '1' ��ʾ�û���ǰ�ر�����, ���� '0' ��ʾ������������, ���� '-1' ��ʾ������ʾ����
  // �����ϣ����õķ�������һ���ģ�����ֻҪ���Կ��� NSIS �Ĳ�����ӣ���Ϳ����� INNO ���������Ϸ������е���

WizardForm.LICENSEACCEPTEDRADIO.Checked := true;//Ĭ��ѡ�����Э��
//����ʾ����Э��Ͳ�����Э���radio�ռ�
WizardForm.LICENSEACCEPTEDRADIO.Visible := false;
WizardForm.LicenseNotAcceptedRadio.Visible := false;
WizardForm.BeveledLabel.Enabled:= True;  
WizardForm.BeveledLabel.Font.Color:= clblue; 
WizardForm.BeveledLabel.Font.Style := WizardForm.BeveledLabel.Font.Style + [fsBold];
WizardForm.BeveledLabel.Left := 5;  
 // ��װ��������ʹ��
 //WizardForm.OuterNotebook.hide;  // ����Ĭ�ϵĵ�������
 //WizardForm.Bevel.hide;          // ���طָ���
 //WizardForm.BorderStyle:=bsnone;  // �߽�����
 // WizardForm.Position:=poScreenCenter; // λ����Ļ����
 WizardForm.Width:={#AppWidth};               // ��
 WizardForm.Height:={#AppHeight};             // ��
 // WizardForm.Color:=$00fd9804;        // ������ɫ
 //WizardForm.NextButton.hide;
 // WizardForm.OnMouseDown:=@WizardMouseDown       //��ק
CancelButton := WizardForm.CancelButton;
AboutButton := TButton.Create(WizardForm);
AboutButton.Left := WizardForm.ClientWidth - CancelButton.Left - CancelButton.Width;
AboutButton.Top := CancelButton.Top--75;
AboutButton.Width := CancelButton.Width;
AboutButton.Height := CancelButton.Height;
AboutButton.Caption := 'About(&A)';
AboutButton.OnClick := @AboutButtonOnClick;
AboutButton.Parent := WizardForm;

  if val = 1 then
    MsgBox('������������ڣ�����������ǰ�رգ�', mbConfirmation, MB_OK);
end;

//��Э��ҳ��ʱ���ġ���һ������ť��ʾ������Ϊ���ҽ��ܡ�
procedure CurPageChanged(CurPageID: Integer);
begin
if CurPageID = wpLicense then
   WizardForm.NextButton.Caption := 'I Accept';
if CurPageID = wpWelcome then
 begin
    setwaterparent(WizardForm.WelcomePage.Handle);
    waterblob(70, 198, 10, 1000);
end else
if CurPageID = wpFinished then
begin
    SetUninstallIcon(ExpandConstant('{#IconFile}'));
    setwaterparent(WizardForm.FinishedPage.Handle);
    waterblob(70, 198, 10, 1000);
end else
    flattenwater();
end;
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

//�������innosetup���Զ����õģ�����װ���������ı�ʱ�����ͻᱻ��������װ�����򿪹���
procedure CurStepChanged(CurStep: TSetupStep);
var
 ErrorCode: Integer;
 isVerySilent: boolean;
 j:Cardinal;
 LanguageName: string;
begin                 //��װǰж�آ����ʹ��
  if (CurStep=ssInstall) then
  begin
    if (IsUpgrade()) then
    begin
      UnInstallOldVersion();
    end;
end;
begin
  //ssDone�����ǵ��Finish���״̬�����������ϸ����
  if(CurStep=ssDone) then    //�����װ��ִ��
  begin
       for j := 1 to ParamCount do
       begin
           //�������жϳ����Ƿ�Ϊ��Ĭ��װ�����򲻴���ҳ
           if(CompareText(ParamStr(j),'/verysilent')=0) then
               isVerySilent := true
       end;
       if(not isVerySilent) then
       begin
           ShellExec('open','{# MyAppURL}','','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
       end;
  end;
begin
    LanguageName := ActiveLanguage(); // ��ȡ�û�ѡ�������             
    if 'cn' = languageName then
    begin
       SetIniString('config','Language','cn',ExpandConstant('{app}/System/DeviceConfig.ini'));   //ini д��
    end 
    else if 'en' = languageName then
    begin
      SetIniString('config','Language','en',ExpandConstant('{app}/System/DeviceConfig.ini'));
    end;
  end;
end;
//function DeleteFile(const FileName: string): Boolean;
//begin
 		                  // ɾ�� C:\Test\*.tmp ��ƥ����ļ�
// DeleteFile(WizardForm.DirEdit.text+'log\name6.log');
//end;
end;





