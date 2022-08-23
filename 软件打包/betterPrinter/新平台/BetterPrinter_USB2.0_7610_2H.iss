; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!

[Setup]
AppId= {{��}}
AppName= BetterPrinterApp
AppVerName= BetterPrinterApp_7610_2HAppVersion= 2.10.11.50;VersionInfoCompany=������ܿƼ����޹�˾
AppPublisher=��ɳ��ӡ���ܿƼ����޹�˾
AppPublisherURL=http://www.better-printer.com/
AppSupportURL=http://www.better-printer.com/
AppUpdatesURL=http://www.better-printer.com/
DefaultDirName=D:\BetterPrinterApp_TH
DefaultGroupName= BetterPrinterApp
OutputDir=D:\Publish\Result
OutputBaseFilename= BetterPrinterApp_7610_2H_EN
SolidCompression=no
SetupIconFile=F:\wwxʹ��\����\����ز�\BetterPrinter.ico
;��װ���򽫲���ʾ����ӭ����ҳ ,����Ϊ yes
;DisableWelcomePage  = no

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"
Name: "eng"; MessagesFile: "compiler:languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "F:\�ۺ���ϵ��\�������ͻ�����⡿����\V2.0ƽ̨\��������Ƽ�\12\7610-2H_EN\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;USB����,���ݲ�ͬ��ϵͳ��װ��ͬ��������
[Types]
;Name: Full ;Description:"Ĭ�ϰ�װ";
;Name: Compact ;Description:"��లװ";
;Name: Custom; Description:"�Զ��尲װ"; Flags: iscustom           
[Components]
;��Ӱ�װ��ѡ��
;Name: main; Description:"������(��ѡ)";Types:full compact custom;Flags: fixed
;Name: data; Description:"�����ļ�";Types:full
;Name: help;Description:"�����ļ�";Types:full
Name: LCSM; Description: "BetterPrinterApp_TH"; Flags:exclusive disablenouninstallwarning

[INI]
Filename: "{app}\BetterPrinterApp.url"; Section: "InternetShortcut"; Key: "URL"; String: "www.maet.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "www.maet.com"

[Icons]
Name: "{group}\BetterPrinterApp.exe"; Filename: "{app}\BetterPrinterApp.exe"; WorkingDir: "{app}"
;Name: "{group}\BetterPrinterApp.chm"; Filename: "{app}\BetterPrinterApp.chm"
Name: "{group}\{cm:ProgramOnTheWeb,BetterPrinterApp}"; Filename: "{app}\BetterPrinterApp.url"
Name: "{group}\{cm:UninstallProgram,BetterPrinterApp}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\BetterPrinterApp_TH"; Filename: "{app}\BetterPrinterApp"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\BetterPrinterApp.exe"; Filename: "{app}\BetterPrinterApp.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]

[Run]
Filename: "{app}\usb device\usb2.0\32bit\setup(X86).exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\usb device\usb2.0\64bit\setup(X64).exe"; Flags: waituntilterminated;Check:Isx64 
Filename: "{app}\vc_package\VCR_Hyb_x86_x64_16.10.2017.exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\����˵��.txt"; Description: "����˵��"; Flags: postinstall shellexec skipifsilent
;��װ��ɺ�ɾ���ļ����ļ��� 
;Filename: "{cmd}"; Parameters: "/c del ""{app}\temp\cn\langCfg.ini"""; Flags: hidewizard runhidden
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\en"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\cn"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\en"""; Flags: hidewizard runhidden; 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\cn"""; Flags: hidewizard runhidden; 
[UninstallDelete]
Type: files; Name: "{app}\BetterPrinterApp.url"
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
  
  
procedure CurStepChanged(CurStep: TSetupStep);  
var Isstr :string;  
begin  
if CurStep=ssInstall then       //ʵ�ʰ�װǰ����  
begin  
    //MsgBox('CurStepChanged:ʵ�ʰ�װǰ����', mbConfirmation, MB_OKCANCEL);           //��װ��ɺ����  
end;  
if CurStep=ssPostInstall then  
begin  
    Isstr := ExpandConstant('{tmp}\tmp.rar');  
//    if FileExists(Isstr) then  
//    begin  
//      MsgBox('�ļ�����',mbConfirmation, MB_OK);  
//    end else  
//    begin  
//      MsgBox('�ļ�������',mbConfirmation, MB_OK);  
//    end;  
   // MsgBox('CurStepChanged:ʵ�ʰ�װ�����', mbConfirmation, MB_OKCANCEL);  
end;  
end;  
  
