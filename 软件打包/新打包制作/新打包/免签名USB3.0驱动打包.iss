#define MyAppName "Drive USB 3.0"                                                          ;���г�����
#define MyAppPublisher "��ɳ��ӡ���ܿƼ����޹�˾"                    ;������
#define MyAppVersion "0.0.3.0"                                                     ;�汾��    2.0.0.0._.1.0.0.37
#define OutPutName " Device 3.0"                       ;����ļ���
#define AppVerName  "BetterPrinter Drive USB3.0  "                     ;ϵͳ���������
#define InPutFile"F:\��������\���η�װ\usb3.0"                                ;�����ļ�Ŀ¼
#define AppHeight "420"             ;��
#define AppWidth  "620"             ;��
#define DataPort  "USB3.0"         ;���ݶ˿� 
#define DirName"{tmp}"

#define AppID"BetterPrinterApp Drive 3.0"          ;{94663D78-3A80-47FE-A474-2ED2CB91C82D}
#define OutPutFile "D:\Publish\Result"
#define  IconFile"F:\��������\���η�װ\usb3.0\ico\BetterPrinterusb3.ICO"

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
WizardImageFile=F:\wwxʹ��\����\����ز�\ͼ1.bmp
//��װ�������ϽǱ�
WizardSmallImageFile=F:\wwxʹ��\����\����ز�\BetterPrinter.bmp
//���Э��
WizardStyle=modern
//����ԱȨ�ް�װ
PrivilegesRequired=admin
//��װ���򽫲���ʾ����ӭ����ҳ ,����Ϊ yes
DisableWelcomePage  = no
//��װ������ȡϵͳ����
LanguageDetectionMethod=uilanguage
//ѡ�����԰�װ������ʾ
ShowLanguageDialog=no 

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"; 
Name: "en"; MessagesFile: "compiler:Languages\English.isl" ;

[Files]
Source: "{#InPutFile}\*"; DestDir: "{#DirName}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "{#IconFile} "; DestDir: "{win}\BetterPrinterAPPico"; Flags: ignoreversion recursesubdirs createallsubdirs 
Source: PlugIn\callnsis.dll; Flags: dontcopy
Source: PlugIn\AdvSplash.dll; Flags: dontcopy

[Messages]  

[Types]

[Registry]  
;Root:HKLM;Subkey:"Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall";ValueType: string; ValueName: "{#AppID}";ValueData:"{app}\ {#MyAppName}.exe";Flags: uninsdeletevalue

[Run]
Filename: "{#DirName}\x86\DPInst32.exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{#DirName}\x64\DPInst64.exe"; Flags: waituntilterminated;Check:Isx64 

[Code]
function SetUninstallIcon(iconPath:string): Boolean;   //����ж��ͼ��
var
  InstalledVersion,SubKeyName: String;
begin
if (IsWin64()) then begin
SubKeyName := 'Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1';
    RegWriteStringValue(HKLM64,SubKeyName,'DisplayIcon','C:\Windows\BetterPrinterAPPico\BetterPrinterusb3.ICO');
  end else begin
SubKeyName :=  'Software\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1';
    RegWriteStringValue(HKLM,SubKeyName,'DisplayIcon','C:\Windows\BetterPrinterAPPico\BetterPrinterusb3.ICO');
  end;
end;

//��ҳ����
function ShouldSkipPage(PageID:Integer):Boolean;
begin
if PageID=wpLicense then
result:=true;
if PageID=wpSelectDir then
result:=true;
if PageID=wpSelectComponents then
result:=true;
if PageID=wpSelectTasks then
result:=true;
if PageID=wpReady then
result:=true;
end;
//wpWelcome|��ӭҳ, wpLicense|Э��ҳ, wpPassword|����ҳ, wpInfoBefore, wpUserInfo,wpSelectDir|��װĿ¼,wpSelectComponents|���ҳ, 
//wpSelectProgramGroup|��ʼ�˵�Ŀ¼ҳ,wpSelectTasks|��������|��ݷ�ʽ, wpReady, wpPreparing,wpInstalling, wpInfoAfter, wpFinished

procedure InitializeWizard(); 
begin
WizardForm.LICENSEACCEPTEDRADIO.Checked := true;//Ĭ��ѡ�����Э��
//����ʾ����Э��Ͳ�����Э���radio�ռ�
 // WizardForm.Position:=poScreenCenter; // λ����Ļ����
 WizardForm.Width:={#AppWidth};               // ��
 WizardForm.Height:={#AppHeight};             // ��

end;
//��Э��ҳ��ʱ���ġ���һ������ť��ʾ������Ϊ���ҽ��ܡ�
procedure CurPageChanged(CurPageID: Integer);
begin
if CurPageID = wpLicense then
   WizardForm.NextButton.Caption := 'I Accept';
if CurPageID = wpFinished then
begin
    SetUninstallIcon(ExpandConstant('{#IconFile}'));  //����ж��ͼ��
end;
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









