; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!

[Setup]
AppId= {{⑤}}
AppName= BetterPrinterApp
AppVerName= BetterPrinterApp_i3200_8H_纸箱机
;VersionInfoCompany=铭洋自动化有限公司
VersionInfoVersion=2.1.0.8    ;版本号
AppPublisher=长沙北印智能科技有限公司
AppPublisherURL=http://www.better-printer.com/
AppSupportURL=http://www.better-printer.com/
AppUpdatesURL=http://www.better-printer.com/
DefaultDirName=D:\BetterPrinterApp_ZX 
DefaultGroupName= BetterPrinterApp
;LicenseFile=F:\Publish\BetterPrinterApp\License\CN\License.txt
;InfoBeforeFile=F:\Publish\BetterPrinterApp\License\CN\Readme.txt
OutputDir=D:\Publish\Result
OutputBaseFilename= BetterPrinterApp_i3200_8H_纸箱机
SolidCompression=no
SetupIconFile=F:\wwx使用\制作\打包素材\BetterPrinter.ico
;安装程序将不显示“欢迎”向导页 ,设置为 yes
;DisableWelcomePage  = no

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"
Name: "eng"; MessagesFile: "compiler:languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "F:\售后体系库\客户软件库\河北沧州铭洋自动化纸箱机\I3200_8H_4\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;USB驱动,根据不同的系统安装不同的驱动程
[Types]
;Name: Full ;Description:"默认安装";
;Name: Compact ;Description:"简洁安装";
;Name: Custom; Description:"自定义安装"; Flags: iscustom           
[Components]
;添加安装可选项
;Name: main; Description:"主程序(必选)";Types:full compact custom;Flags: fixed

Name: LCSM; Description: "BetterPrinterApp_ZX"; Flags:exclusive disablenouninstallwarning

[INI]
Filename: "{app}\BetterPrinterApp.url"; Section: "InternetShortcut"; Key: "URL"; String: "www.maet.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "www.maet.com"

[Icons]
Name: "{group}\BetterPrinterApp.exe"; Filename: "{app}\BetterPrinterApp.exe"; WorkingDir: "{app}"
;Name: "{group}\BetterPrinterApp.chm"; Filename: "{app}\BetterPrinterApp.chm"
Name: "{group}\{cm:ProgramOnTheWeb,BetterPrinterApp}"; Filename: "{app}\BetterPrinterApp.url"
Name: "{group}\{cm:UninstallProgram,BetterPrinterApp}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\BetterPrinterApp_ZX"; Filename: "{app}\BetterPrinterApp"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\BetterPrinterApp.exe"; Filename: "{app}\BetterPrinterApp.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]

[Run]
Filename: "{app}\usb device\x86\DPInst32.exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\usb device\x64\DPInst64.exe"; Flags: waituntilterminated;Check:Isx64 
Filename: "{app}\vc_package\VCR_Hyb_x86_x64_16.10.2017.exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\更新说明.txt"; Description: "更新说明"; Flags: postinstall shellexec skipifsilent
;安装完成后删除文件及文件夹 
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
if CurStep=ssInstall then       //实际安装前调用  
begin  
    //MsgBox('CurStepChanged:实际安装前调用', mbConfirmation, MB_OKCANCEL);           //安装完成后调用  
end;  
if CurStep=ssPostInstall then  
begin  
    Isstr := ExpandConstant('{tmp}\tmp.rar');  
//    if FileExists(Isstr) then  
//    begin  
//      MsgBox('文件存在',mbConfirmation, MB_OK);  
//    end else  
//    begin  
//      MsgBox('文件不存在',mbConfirmation, MB_OK);  
//    end;  
   // MsgBox('CurStepChanged:实际安装后调用', mbConfirmation, MB_OKCANCEL);  
end;  
end;  
  
