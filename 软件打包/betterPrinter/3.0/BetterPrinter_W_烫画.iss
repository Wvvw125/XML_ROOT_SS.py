; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!

[Setup]
AppId= {{⑤}}
AppName= BetterPrinter
AppVerName= BetterPrinter_W_4720_4H
AppPublisher=长沙北印智能科技有限公司
AppPublisherURL=http://www.better-printer.com/
AppSupportURL=http://www.better-printer.com/
AppUpdatesURL=http://www.better-printer.com/
DefaultDirName=D:\BetterPrinter_W
DefaultGroupName= BetterPrinter
;LicenseFile=F:\Publish\BetterPrinter\License\CN\License.txt
;InfoBeforeFile=F:\Publish\BetterPrinter\License\CN\Readme.txt
OutputDir=D:\Publish\Result
OutputBaseFilename= BetterPrinter_4720_4H_8C_W
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
Source: "F:\客户测试集\8月\0823\5113(4720)-4H-8C-W\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;USB驱动,根据不同的系统安装不同的驱动程
[Types]
;Name: Full ;Description:"默认安装";
;Name: Compact ;Description:"简洁安装";
;Name: Custom; Description:"自定义安装"; Flags: iscustom           
[Components]
;添加安装可选项
;Name: main; Description:"主程序(必选)";Types:full compact custom;Flags: fixed
;Name: data; Description:"数据文件";Types:full
;Name: help;Description:"帮助文件";Types:full
Name: LCSM; Description: "BetterPrinter_TH_W"; Flags:exclusive disablenouninstallwarning
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
Filename: "{app}\BetterPrinter.url"; Section: "InternetShortcut"; Key: "URL"; String: "www.maet.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "www.maet.com"

[Icons]
Name: "{group}\BetterPrinter.exe"; Filename: "{app}\BetterPrinter.exe"; WorkingDir: "{app}"
;Name: "{group}\BetterPrinter.chm"; Filename: "{app}\BetterPrinter.chm"
Name: "{group}\{cm:ProgramOnTheWeb,BetterPrinter}"; Filename: "{app}\BetterPrinter.url"
Name: "{group}\{cm:UninstallProgram,BetterPrinter}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\BetterPrinter_TH_W"; Filename: "{app}\BetterPrinter"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\BetterPrinter.exe"; Filename: "{app}\BetterPrinter.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]

[Run]
Filename: "{app}\usb device\x86\DPInst32.exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\usb device\x64\DPInst64.exe"; Flags: waituntilterminated;Check:Isx64 
Filename: "{app}\vc_runtime\MSVBCRT AIO 2017.03.13 X86 X64.exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\更新说明.txt"; Description: "更新说明"; Flags: postinstall shellexec skipifsilent
;安装完成后删除文件及文件夹 
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
  
