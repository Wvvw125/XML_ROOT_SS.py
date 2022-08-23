; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!
#define MyAppName "BetterPrinter"                                        ;���г�����
#define MyAppPublisher "��ɳ��ӡ���ܿƼ����޹�˾"              ;��˾��
#define MyAppVersion "1.1.0.0._.1.0.55.0 "                             ;�汾��
#define MyAppExeName "BetterPrinter.exe"                           ;���г���
#define OutPutName " BetterPrinter4720-4H-W-C-1.0"                   ;����ļ���
#define AppVerName  "BetterPrinter"                                ;ϵͳ���������
#define DirName "D:\BetterPrinter_4720"                          ;��װĿ¼��
#define InPutFile"F:\wwxʹ��\����\4720(1W1C)-2H-1.1"        ;�����Ŀ¼
#define OutPutFile "D:\Publish\Result"                                 ;���Ŀ¼
#define AppID"{{��}}"
#define AppHeight "420"        ;��
#define AppWidth  "620"        ;��
#define DataPort  "USB3.0"       ;���ݶ˿�
               
#define MyAppURL "http://www.better-printer.com/"
#define MyAppAssocName  MyAppName + " �ļ�"
#define MyAppAssocExt ".prn" 
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt
#define  LicenseFileCN  "F:\wwxʹ��\����\����ز�\���Э��\CN.txt"
#define  LicenseFileEN  "F:\wwxʹ��\����\����ز�\���Э��\EN.txt"
#define  LanguageName

[Setup]
AppId= {#AppID}
AppName= {#MyAppName}
AppVerName= {#AppVerName}
;��˾����
;VersionInfoCompany=
;�汾��
VersionInfoVersion={# MyAppVersion} ;��Ȩ��VersionInfoCopyright=��
AppPublisher={# MyAppPublisher} 
AppPublisherURL={# MyAppURL}
AppSupportURL={# MyAppURL}
AppUpdatesURL={# MyAppURL}
;Ŀ¼����
DefaultDirName={#DirName}  
DefaultGroupName= {#MyAppName}
;LicenseFile=F:\Publish\BetterPrinter\License\CN\License.txt
;InfoBeforeFile=F:\Publish\BetterPrinter\License\CN\Readme.txt
OutputDir= {#OutPutFile}
OutputBaseFilename=  {#OutPutName}
SolidCompression=no
;���г���ͼ��
SetupIconFile=F:\wwxʹ��\����\����ز�\BetterPrinter.ico    
;��װ���򽫲���ʾ����ӭ����ҳ ,����Ϊ yes
DisableWelcomePage  = no
;��װ������ͼƬ
WizardImageFile=F:\wwxʹ��\����\����ز�\ͼ1.bmp
;��װ�������ϽǱ�
WizardSmallImageFile=F:\wwxʹ��\����\����ز�\BetterPrinter.bmp
;���Э��
WizardStyle=modern
ShowLanguageDialog=yes

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"; LicenseFile:{#LicenseFileCN}
Name: "en"; MessagesFile: "compiler:Languages\English.isl" ; LicenseFile:{#LicenseFileEN}

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "{#InPutFile}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;USB����,���ݲ�ͬ��ϵͳ��װ��ͬ��������

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
// CNchs
;���ÿ�ʼ����  
cn.WelcomeLabel1=%n��ӭ��װ {#MyAppName}��ӡϵͳ   
cn.WelcomeLabel2=%n {#MyAppName}�����ִ�ӡͷ��һ���IJPϵͳ%n%n-USB�棺����USB��{#MyAppName}����ƽ̨%n%n-ETH�棺��������{#MyAppName}����ƽ̨%n%n%n%n%n  
;�������֤Э�����  
cn.WizardLicense=���֤Э��  
cn.LicenseLabel=�ڰ�װ��{#MyAppName}��֮ǰ�����Ķ�%n��ȨЭ��  
;���ð�װ·��ѡ�����  
cn.WizardSelectDir=ѡ��װλ��  
cn.SelectDirDesc=ѡ��{#MyAppName}���İ�װ�ļ���  
cn.SelectDirLabel3=-��װ���򽫰�װ {#MyAppName} �������ļ���%n%n-Ҫ��װ�������ļ��У�����[���(R)...]��ť��ѡ�������ļ���%n%n-���[< ����(B)]��ť������һ������%n%n-ѡ��[��һ��(F) >]��ť������װ {#MyAppName}%n%n-ѡ��[ȡ��)(C)]��ť�˳� {#MyAppName} ��װ  
;CN.SelectDirBrowseLabel=  
;CN.DiskSpaceMBLabel=  
;���������װ����  
cn.WizardSelectComponents=ѡ�����  
cn.SelectComponentsDesc=ѡ������Ҫ��װ�� {#MyAppName}ϵͳ �����  
cn.SelectComponentsLabel2=��ѡ����Ҫ��װ���������������밲װ�������%n���[��һ��(F) >]��ť������  
;����׼����װ����  
cn.WizardReady=׼����װ  
cn.ReadyLabel1=��װ���򽫰�װ {#MyAppName}
//ENG
;���ÿ�ʼ����  
en.WelcomeLabel1=%nWelcome to install {#MyAppName} print system   
en.WelcomeLabel2=%n {#MyAppName} set all kinds of print heads in one IJP system %n%n-USB version: for USB port {#MyAppName} function platform %n%n-ETH version: for network port {#MyAppName} function platform%n%n%n%n%n
;�������֤Э�����  
en.WizardLicense=License Agreement  
en.LicenseLabel=Please read the %n license agreement before installing "{#MyAppName}"  
;���ð�װ·��ѡ�����  
en.WizardSelectDir=Select an Installation position  
en.SelectDirDesc=Select the "{#MyAppName}" installation folder  
en.SelectDirLabel3=-Setup will install {#MyAppName} into the following folder %n%n- To install to other folders, standalone [Browse (R)] Button and select another folder %n %n - click on the [<BACK (B)] button to return to an interface on the %n %n - choose [NEXT (F) >] {#MyAppName} {#MyAppName}%n%n-Select the [CANCEL(C) ]button to exit {#MyAppName}The installation  
;ENG.SelectDirBrowseLabel=  
;ENG.DiskSpaceMBLabel=  
;���������װ����  
en.WizardSelectComponents=Select the component  
en.SelectComponentsDesc=Select the components of the {#MyAppName} system that you want to install  
en.SelectComponentsLabel2=Select the components you want to install and clear the ones you don't want to install. %n Click [Next (F) >] Button to continue.  
;����׼����װ����  
en.WizardReady=Ready to install  
en.ReadyLabel1=Setup will install {#MyAppName}

;[CustomMessages]
;CN.MyInFo=�ҽ���
;ENG.MyInFo= I accept

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
  ;Name: SKY4180\EPSON_8H4C; Description: "EPSON_8H4C"; Flags:checkablealone  disablenouninstallwarning
  ;Name: SKY4180\EPSON_16H4C; Description: "EPSON_16H4C"; Flags:checkablealone  disablenouninstallwarning
 
[INI]
;Filename: "{app}\System\DeviceConfig.ini"; Section: "Device"; Key: "ip"; String: "0.0.0.0"; 
;Filename: "{app}\System\DeviceConfig.ini"; Section: "Device"; Key: "ip"; String:"0.0.0.0"; 
;Filename: "{app}\System\DeviceConfig.ini"; Section: "Device"; Key: "bufsize"; String: "512"; 

;�������ѡ��
Filename: "{app}\Language\lgcfg.cfg"; Section: "CONFIG_CFG"; Key: "strLanguage";String:;               
;Filename: "{app}\System\DeviceConfig.ini"; Section: "config"; Key: "path"; String: "TX800&Xp600-3H-4C-WO.xml" ;
;Filename: "{app}\System\DeviceConfig.ini"; Section: "config"; Key: "clean"; String: "Clean_0.xml";

[Icons]
Name: "{group}\{#MyAppExeName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"
;Name: "{group}\BetterPrinter.chm"; Filename: "{app}\BetterPrinter.chm"
Name: "{group}\{cm:ProgramOnTheWeb,BetterPrinter}"; Filename: "{app}\BetterPrinter.url"
Name: "{group}\{cm:UninstallProgram,BetterPrinter}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppName}"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppExeName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Run]
Filename: "{app}\usb device\x86\DPInst32.exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\usb device\x64\DPInst64.exe"; Flags: waituntilterminated;Check:Isx64 
Filename: "{app}\vc_runtime\MSVBCRT AIO 2017.03.13 X86 X64.exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\����˵��.txt"; Description: "����˵��"; Flags: postinstall shellexec skipifsilent
;��װ��ɺ�ɾ���ļ����ļ��� 
;Filename: "{cmd}"; Parameters: "/c del ""{app}\temp\cn\langCfg.ini"""; Flags: hidewizard runhidden
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\en"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\cn"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\en"""; Flags: hidewizard runhidden; 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\cn"""; Flags: hidewizard runhidden; 
[UninstallDelete]
Type: files; Name: "{app}\BetterPrinter.url"
Type: filesandordirs; Name: "{app}"

;�������ļ���
[dirs]
// Name:"{app}\WorkDir"

[Code]
procedure InitializeWizard(); 
begin
WizardForm.LICENSEACCEPTEDRADIO.Checked := true;//Ĭ��ѡ�����Э��
//����ʾ����Э��Ͳ�����Э���radio�ռ�
WizardForm.LICENSEACCEPTEDRADIO.Visible := false;
WizardForm.LicenseNotAcceptedRadio.Visible := false;
WizardForm.BeveledLabel.Enabled:= True;  
WizardForm.BeveledLabel.Font.Color:= clblue; 
  
  // ��װ��������ʹ��
 //WizardForm.OuterNotebook.hide;  // ����Ĭ�ϵĵ�������
 // WizardForm.Bevel.hide;          // ���طָ���
 //WizardForm.BorderStyle:=bsnone;  // �߽�����
 // WizardForm.Position:=poScreenCenter; // λ����Ļ����
  WizardForm.Width:={#AppWidth};               // ��
  WizardForm.Height:={#AppHeight};             // ��
 // WizardForm.Color:=$00fd9804;        // ������ɫ
  WizardForm.NextButton.hide;
  //  WizardForm.OnMouseDown:=@WizardMouseDown       //��ק
end;

//��Э��ҳ��ʱ���ġ���һ������ť��ʾ������Ϊ���ҽ��ܡ�
procedure CurPageChanged(CurPageID: Integer);
begin
if CurPageID = wpLicense
then
   WizardForm.NextButton.Caption := 'I Accept';
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
winVer: TWindowsVersion;
 ResultCode: Integer;  
 osversion: string;
 res: bool;
//Language: Ansistring;

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
       SetIniString('CONFIG_CFG','strLanguage','chs',ExpandConstant('{app}/Language/lgcfg.cfg'));   //ini д��
   end 
    else if 'en' = languageName then
    begin
      SetIniString('CONFIG_CFG','strLanguage','enu',ExpandConstant('{app}/Language/lgcfg.cfg'));
    end;
  end; 
end;


//����  
//procedure CurStepChanged(CurStep: TSetupStep);  
//var Isstr :string;  
//begin  
//if CurStep=ssInstall then       //ʵ�ʰ�װǰ����  
//begin  
    //MsgBox('CurStepChanged:ʵ�ʰ�װǰ����', mbConfirmation, MB_OKCANCEL);           //��װ��ɺ����  
//end;  
//if CurStep=ssPostInstall then  
//begin  
//    Isstr := ExpandConstant('{tmp}\tmp.rar');  
//    if FileExists(Isstr) then  
//    begin  
//      MsgBox('�ļ�����',mbConfirmation, MB_OK);  
//    end else  
//    begin  
//      MsgBox('�ļ�������',mbConfirmation, MB_OK);  
//    end;  
   // MsgBox('CurStepChanged:ʵ�ʰ�װ�����', mbConfirmation, MB_OKCANCEL);  
//end;  
//end;  



