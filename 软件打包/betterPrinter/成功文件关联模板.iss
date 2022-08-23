; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!
 #define MyAppName "BetterPrinter"
 #define MyAppExeName "BetterPrinter.exe"
#define MyAppAssocName MyAppName + " �ļ�"
#define MyAppAssocExt ".prn"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt
[Setup]
AppId= {{��}}
AppName= {#MyAppName}
AppVerName= BetterPrinter_UV_PB_xp600_1H
;��˾����
;VersionInfoCompany=
;�汾��
VersionInfoVersion=1.1.0.0._.1.0.55.0   ;��Ȩ��VersionInfoCopyright=��
AppPublisher=��ɳ��ӡ���ܿƼ����޹�˾
AppPublisherURL=http://www.better-printer.com/
AppSupportURL=http://www.better-printer.com/
AppUpdatesURL=http://www.better-printer.com/
DefaultDirName=D:\BetterPrinter_PB_X600
DefaultGroupName= BetterPrinter
;LicenseFile=F:\Publish\BetterPrinter\License\CN\License.txt
;InfoBeforeFile=F:\Publish\BetterPrinter\License\CN\Readme.txt
OutputDir=D:\Publish\Result
OutputBaseFilename= BetterPrinter_xp600_3333H_4CW_B
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
LicenseFile= F:\wwxʹ��\����\����ز�\���Э��\1.txt

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"
Name: "eng"; MessagesFile: "compiler:languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "F:\wwxʹ��\����\����ز�\BetterPrinter\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;USB����,���ݲ�ͬ��ϵͳ��װ��ͬ��������

[Messages]  
;���ܰ����滻����Ӣ�Ĳ�ͬ��
BeveledLabel=USB
ButtonNext=Next(&F)>
ButtonBack=Back(&B)<
ButtonCancel=Cancel(&C)
ButtonInstall=Install(&I)!
ButtonFinish=Finish(&X)~~
SetupWindowTitle=BetterPrinterApp

;���ÿ�ʼ����  
WelcomeLabel1=%n��ӭ��װ BetterPrinter��ӡϵͳ   
WelcomeLabel2=%n BetterPrinterApp�����ִ�ӡͷ��һ���IJPϵͳ%n%n-USB�棺����USB��BetterPrinterApp����ƽ̨%n%n-ETH�棺��������BetterPrinterApp����ƽ̨%n%n%n%n%n  
;�������֤Э�����  
WizardLicense=���֤Э��  
LicenseLabel=�ڰ�װ��BetterPrinterApp��֮ǰ�����Ķ�%n��ȨЭ��  
;���ð�װ·��ѡ�����  
WizardSelectDir=ѡ��װλ��  
SelectDirDesc=ѡ��BetterPrinterApp���İ�װ�ļ���  
SelectDirLabel3=-��װ���򽫰�װ BetterPrinterApp �������ļ���%n%n-Ҫ��װ�������ļ��У�����[���(R)...]��ť��ѡ�������ļ���%n%n-���[< ����(B)]��ť������һ������%n%n-ѡ��[����(N) >]��ť������װ BetterPrinterApp%n%n-ѡ��[ȡ��]��ť�˳� BetterPrinterApp ��װ  
SelectDirBrowseLabel=  
DiskSpaceMBLabel=  
;���������װ����  
WizardSelectComponents=ѡ�����  
SelectComponentsDesc=ѡ������Ҫ��װ�� BetterPrinterAppϵͳ �����  
SelectComponentsLabel2=��ѡ����Ҫ��װ���������������밲װ�������%n���[��һ��(F) >]��ť������  
;����׼����װ����  
WizardReady=׼����װ  
ReadyLabel1=��װ���򽫰�װ BetterPrinterApp

[Types]
;Name: Full ;Description:"Ĭ�ϰ�װ";
;Name: Compact ;Description:"��లװ";
;Name: Custom; Description:"�Զ��尲װ"; Flags: iscustom           
[Components]
;��Ӱ�װ��ѡ��
;Name: main; Description:"������(��ѡ)";Types:full compact custom;Flags: fixed
;Name: data; Description:"�����ļ�";Types:full
;Name: help;Description:"�����ļ�";Types:full
Name: LCSM; Description: "BetterPrinter_QD"; Flags:exclusive disablenouninstallwarning
  ;Name: SKY4180\EPSON_8H4C; Description: "EPSON_8H4C"; Flags:checkablealone  disablenouninstallwarning
  ;Name: SKY4180\EPSON_16H4C; Description: "EPSON_16H4C"; Flags:checkablealone  disablenouninstallwarning
 
[INI]
Filename: "{app}\BetterPrinter.url"; Section: "InternetShortcut"; Key: "URL"; String: "www.maet.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "www.maet.com"

[Icons]
Name: "{group}\BetterPrinter.exe"; Filename: "{app}\BetterPrinter.exe"; WorkingDir: "{app}"
;Name: "{group}\BetterPrinter.chm"; Filename: "{app}\BetterPrinter.chm"
Name: "{group}\{cm:ProgramOnTheWeb,BetterPrinter}"; Filename: "{app}\BetterPrinter.url"
Name: "{group}\{cm:UninstallProgram,BetterPrinter}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\BetterPrinter_QD"; Filename: "{app}\BetterPrinter"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\BetterPrinter.exe"; Filename: "{app}\BetterPrinter.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""


[Run]
Filename: "{app}\usb device\32bit\setup(X86).exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\usb device\64bit\setup(X64).exe"; Flags: waituntilterminated;Check:Isx64 
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
;Type: filesandordirs; Name: "{app}"

;�������ļ���
[dirs]
Name:"{app}\WorkDir"

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
  WizardForm.Width:=630;               // ��
  WizardForm.Height:=408;             // ��
 // WizardForm.Color:=$00fd9804;        // ������ɫ
  WizardForm.NextButton.hide;
  //  WizardForm.OnMouseDown:=@WizardMouseDown       //��ק
end;

  

//��Э��ҳ��ʱ���ġ���һ������ť��ʾ������Ϊ���ҽ��ܡ�
procedure CurPageChanged(CurPageID: Integer);
begin
if CurPageID = wpLicense
then
WizardForm.NextButton.Caption := '�ҽ���';
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

begin
  //ssDone�����ǵ��Finish���״̬�����������ϸ����
  if(CurStep=ssDone) then
  begin
       for j := 1 to ParamCount do
       begin
           //�������жϳ����Ƿ�Ϊ��Ĭ��װ�����򲻴���ҳ
           if(CompareText(ParamStr(j),'/verysilent')=0) then
               isVerySilent := true
       end;

       if(not isVerySilent) then
       begin
           ShellExec('open','http://www.better-printer.com/','','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
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



