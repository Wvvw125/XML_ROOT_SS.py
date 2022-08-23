; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!
#define MyAppName "BetterPrinterApp"                                     
#define MyAppPublisher ""  
#define AppVerName  "BetterPrinterApp"   
#define AppID"{{��}}"
#define AppHeight "480"        
#define AppWidth  "680"                                                     
#define MyAppVersion "2.0.0.0._.1.0.0.68 "   

#define OutPutFile "D:\Publish\Result"                            
#define MyAppExeName "BetterPrinterApp.exe"                               
 ;���г���

#define OutPutName " BetterPrinterAppXp600-2.0"                        
;����ļ���
                             
#define DirName "D:\BetterPrinterApp_XP600"                         
 ;��װĿ¼��
#define InPutFile"F:\�ۺ���ϵ��\�������ͻ�����⡿����\V2.0ƽ̨\BetterPrinterApp����"

#define USBdevice  "Device 2.0.exe"   ;������       #define vvpage "VCR_Hyb_x86_x64_16.10.2017.exe";������  
            
#define MyAppURL ""
#define MyAppAssocName  MyAppName + " �ļ�"
#define MyAppAssocExt "" 
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

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
;��װ���򽫲���ʾ����ӭ����ҳ ,����Ϊ yes
DisableWelcomePage  = no;���г���ͼ��
SetupIconFile=BetterPrinter.ico;��װ�������ϽǱ�
WizardSmallImageFile=BetterPrinter.bmp
;���Э��
WizardStyle=modern
ShowLanguageDialog=yes

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"; 
Name: "en"; MessagesFile: "compiler:Languages\English.isl" ;

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "{#InPutFile}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Messages]  

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
;�������ѡ��
Filename: "{app}\System\DeviceConfig.ini"; Section: "config"; Key: "Language";String:;               

[Icons]
Name: "{group}\{#MyAppExeName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"
;Name: "{group}\BetterPrinter.chm"; Filename: "{app}\BetterPrinter.chm"
Name: "{group}\{cm:ProgramOnTheWeb,BetterPrinter}"; Filename: "{app}\BetterPrinter.url"
Name: "{group}\{cm:UninstallProgram,BetterPrinter}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppName}"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppExeName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]
[Run]
Filename: "{app}\usb device\{#USBdevice}"; Flags: waituntilterminated;
Filename: "{app}\vc_package\{#vvpage}"; Flags: waituntilterminated;

[UninstallDelete]
Type: files; Name: "{app}\BetterPrinter.url"
Type: filesandordirs; Name: "{app}"

[dirs]; Name:"{app}\WorkDir"

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
 // WizardForm.Width:={#AppWidth};               // ��
 // WizardForm.Height:={#AppHeight};             // ��
//  WizardForm.Color:=$00fd9804;        // ������ɫ
//  WizardForm.NextButton.hide;

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

begin
  if(CurStep=ssDone) then    
  begin
       for j := 1 to ParamCount do
       begin
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
       SetIniString('config','Language','cn',ExpandConstant('{app}/System/DeviceConfig.ini'));   
   end 
    else if 'en' = languageName then
    begin
      SetIniString('config','Language','en',ExpandConstant('{app}/System/DeviceConfig.ini'));
    end;
  end; 
end;






