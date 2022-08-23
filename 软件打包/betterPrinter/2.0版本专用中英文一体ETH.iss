; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!
#define MyAppName "BetterPrinterApp"                                        ;运行程序名
#define MyAppPublisher "长沙北印智能科技有限公司"              ;公司名
#define MyAppVersion "2.0.0.0._.1.0.0.37 "                              ;版本号
#define MyAppExeName "BetterPrinterApp.exe"                           ;运行程序
#define OutPutName " BetterPrinterAppTX800-2.0"  ;输出文件名
#define AppVerName  "BetterPrinterApp"       ;系统在组件名称
#define DirName "D:\BetterPrinterApp_X600"                          ;安装目录名
#define InPutFile"F:\wwx使用\制作\Tx800"
#define OutPutFile "D:\Publish\Result"
#define AppID"{{⑤}}"
#define AppHeight "420"        ;高
#define AppWidth  "620"        ;宽
#define DataPort  "ETH"         ;数据端口
               
#define MyAppURL "http://www.better-printer.com/"
#define MyAppAssocName  MyAppName + " 文件"
#define MyAppAssocExt ".prn" 
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt
#define  LicenseFileCN  "F:\wwx使用\制作\打包素材\许可协议\CN.txt"
#define  LicenseFileEN  "F:\wwx使用\制作\打包素材\许可协议\EN.txt"
#define  LanguageName

[Setup]
AppId= {#AppID}
AppName= {#MyAppName}
AppVerName= {#AppVerName}
;公司名称
;VersionInfoCompany=
;版本号
VersionInfoVersion={# MyAppVersion} ;版权号VersionInfoCopyright=⑤
AppPublisher={# MyAppPublisher} 
AppPublisherURL={# MyAppURL}
AppSupportURL={# MyAppURL}
AppUpdatesURL={# MyAppURL}
;目录名称
DefaultDirName={#DirName}  
DefaultGroupName= {#MyAppName}
;LicenseFile=F:\Publish\BetterPrinter\License\CN\License.txt
;InfoBeforeFile=F:\Publish\BetterPrinter\License\CN\Readme.txt
OutputDir= {#OutPutFile}
OutputBaseFilename=  {#OutPutName}
SolidCompression=no
;运行程序图标
SetupIconFile=F:\wwx使用\制作\打包素材\BetterPrinter.ico    
;安装程序将不显示“欢迎”向导页 ,设置为 yes
DisableWelcomePage  = no
;安装界面侧边图片
WizardImageFile=F:\wwx使用\制作\打包素材\图1.bmp
;安装界面右上角标
WizardSmallImageFile=F:\wwx使用\制作\打包素材\BetterPrinter.bmp
;许可协议
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
;USB驱动,根据不同的系统安装不同的驱动程

[Messages]  
cn.BeveledLabel={#DataPort}
cn.ButtonNext=下一步(&F)>
cn.ButtonBack=<返回(&B)
cn.ButtonCancel=取消(&C)
cn.ButtonInstall=安装(&I)!
cn.ButtonFinish=完成(&X)~~
cn.SetupWindowTitle={#MyAppName} 智能打印系统

en.BeveledLabel={#DataPort}
en.ButtonNext=NEXT(&F)>
en.ButtonBack=<BACK(&B)
en.ButtonCancel=CANCEL(&C)
en.ButtonInstall=INSTALL(&I)!
en.ButtonFinish=FINISH(&X)~~
en.SetupWindowTitle={#MyAppName} Intelligent IJP system
// CN
;设置开始界面  
cn.WelcomeLabel1=%n欢迎安装 {#MyAppName}打印系统   
cn.WelcomeLabel2=%n {#MyAppName}集各种打印头于一体的IJP系统%n%n-USB版：用于USB口{#MyAppName}功能平台%n%n-ETH版：用于网口{#MyAppName}功能平台%n%n%n%n%n  
;设置许可证协议界面  
cn.WizardLicense=许可证协议  
cn.LicenseLabel=在安装“{#MyAppName}”之前，请阅读%n授权协议  
;设置安装路径选择界面  
cn.WizardSelectDir=选择安装位置  
cn.SelectDirDesc=选择“{#MyAppName}”的安装文件夹  
cn.SelectDirLabel3=-安装程序将安装 {#MyAppName} 到下列文件夹%n%n-要安装到其他文件夹，单机[浏览(R)...]按钮并选择其他文件夹%n%n-点击[< 返回(B)]按钮返回上一个界面%n%n-选择[下一步(F) >]按钮继续安装 {#MyAppName}%n%n-选择[取消)(C)]按钮退出 {#MyAppName} 安装  
;CN.SelectDirBrowseLabel=  
;CN.DiskSpaceMBLabel=  
;设置组件安装界面  
cn.WizardSelectComponents=选择组件  
cn.SelectComponentsDesc=选择您想要安装的 {#MyAppName}系统 的组件  
cn.SelectComponentsLabel2=请选择您要安装的组件，清除您不想安装的组件。%n点击[下一步(F) >]按钮继续。  
;设置准备安装界面  
cn.WizardReady=准备安装  
cn.ReadyLabel1=安装程序将安装 {#MyAppName}
//ENG
;设置开始界面  
en.WelcomeLabel1=%nWelcome to install {#MyAppName} print system   
en.WelcomeLabel2=%n {#MyAppName} set all kinds of print heads in one IJP system %n%n-USB version: for USB port {#MyAppName} function platform %n%n-ETH version: for network port {#MyAppName} function platform%n%n%n%n%n
;设置许可证协议界面  
en.WizardLicense=License Agreement  
en.LicenseLabel=Please read the %n license agreement before installing "{#MyAppName}"  
;设置安装路径选择界面  
en.WizardSelectDir=Select an Installation position  
en.SelectDirDesc=Select the "{#MyAppName}" installation folder  
en.SelectDirLabel3=-Setup will install {#MyAppName} into the following folder %n%n- To install to other folders, standalone [Browse (R)] Button and select another folder %n %n - click on the [<BACK (B)] button to return to an interface on the %n %n - choose [NEXT (F) >] {#MyAppName} {#MyAppName}%n%n-Select the [CANCEL(C) ]button to exit {#MyAppName}The installation
;ENG.SelectDirBrowseLabel=  
;ENG.DiskSpaceMBLabel=  
;设置组件安装界面  
en.WizardSelectComponents=Select the component  
en.SelectComponentsDesc=Select the components of the {#MyAppName} system that you want to install  
en.SelectComponentsLabel2=Select the components you want to install and clear the ones you don't want to install. %n Click [Next (F) >] Button to continue.  
;设置准备安装界面  
en.WizardReady=Ready to install  
en.ReadyLabel1=Setup will install {#MyAppName}

;[CustomMessages]
;CN.MyInFo=我接受
;ENG.MyInFo= I accept

[Types]
;Name: Full ;Description:"默认安装";
;Name: Compact ;Description:"简洁安装";
;Name: Custom; Description:"自定义安装"; Flags: iscustom           
[Components]
;添加安装可选项
;Name: main; Description:"主程序(必选)";Types:full compact custom;Flags: fixed
;Name: data; Description:"数据文件";Types:full
;Name: help;Description:"帮助文件";Types:full
Name: LCSM; Description: "{#MyAppName}"; Flags:exclusive disablenouninstallwarning
  ;Name: SKY4180\EPSON_8H4C; Description: "EPSON_8H4C"; Flags:checkablealone  disablenouninstallwarning
  ;Name: SKY4180\EPSON_16H4C; Description: "EPSON_16H4C"; Flags:checkablealone  disablenouninstallwarning
 
[INI]
;Filename: "{app}\System\DeviceConfig.ini"; Section: "Device"; Key: "ip"; String: "0.0.0.0"; 
;Filename: "{app}\System\DeviceConfig.ini"; Section: "Device"; Key: "ip"; String:"0.0.0.0"; 
;Filename: "{app}\System\DeviceConfig.ini"; Section: "Device"; Key: "bufsize"; String: "512"; 

;清空语言选择
Filename: "{app}\System\DeviceConfig.ini"; Section: "config"; Key: "Language";String:;               
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
;Filename: "{app}\usb device\32bit\setup(X86).exe"; Flags: waituntilterminated;Check:Isx86
;Filename: "{app}\usb device\64bit\setup(X64).exe"; Flags: waituntilterminated;Check:Isx64 
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
Type: filesandordirs; Name: "{app}"

;创建空文件夹
[dirs]
// Name:"{app}\WorkDir"

[Code]
procedure InitializeWizard(); 
begin
WizardForm.LICENSEACCEPTEDRADIO.Checked := true;//默认选择接受协议
//不显示接受协议和不接受协议的radio空间
WizardForm.LICENSEACCEPTEDRADIO.Visible := false;
WizardForm.LicenseNotAcceptedRadio.Visible := false;
WizardForm.BeveledLabel.Enabled:= True;  
WizardForm.BeveledLabel.Font.Color:= clblue; 
  
  // 安装界面美化使用
 //WizardForm.OuterNotebook.hide;  // 隐藏默认的导向内容
 // WizardForm.Bevel.hide;          // 隐藏分隔线
 //WizardForm.BorderStyle:=bsnone;  // 边界隐藏
 // WizardForm.Position:=poScreenCenter; // 位置屏幕居中
  WizardForm.Width:={#AppWidth};               // 宽
  WizardForm.Height:={#AppHeight};             // 高
 // WizardForm.Color:=$00fd9804;        // 背景颜色
  WizardForm.NextButton.hide;
  //  WizardForm.OnMouseDown:=@WizardMouseDown       //拖拽
end;

//在协议页面时更改【下一步】按钮显示的内容为【我接受】
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

  
//这个方法innosetup会自动调用的，当安装步骤有所改变时，它就会被触发；安装结束打开官网
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
  //ssDone，就是点击Finish后的状态，后面会有详细解释
  if(CurStep=ssDone) then    //软件安装后执行
  begin
       for j := 1 to ParamCount do
       begin
           //这里是判断程序是否为静默安装，是则不打开网页
           if(CompareText(ParamStr(j),'/verysilent')=0) then
               isVerySilent := true
       end;

       if(not isVerySilent) then
       begin
           ShellExec('open','{# MyAppURL}','','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
       end;
  end;
  begin
    LanguageName := ActiveLanguage(); // 获取用户选择的语言             
    if 'cn' = languageName then
    begin
       SetIniString('config','Language','cn',ExpandConstant('{app}/System/DeviceConfig.ini'));   //ini 写入
   end 
    else if 'en' = languageName then
    begin
      SetIniString('config','Language','en',ExpandConstant('{app}/System/DeviceConfig.ini'));
    end;
  end; 
end;


//重启  
//procedure CurStepChanged(CurStep: TSetupStep);  
//var Isstr :string;  
//begin  
//if CurStep=ssInstall then       //实际安装前调用  
//begin  
    //MsgBox('CurStepChanged:实际安装前调用', mbConfirmation, MB_OKCANCEL);           //安装完成后调用  
//end;  
//if CurStep=ssPostInstall then  
//begin  
//    Isstr := ExpandConstant('{tmp}\tmp.rar');  
//    if FileExists(Isstr) then  
//    begin  
//      MsgBox('文件存在',mbConfirmation, MB_OK);  
//    end else  
//    begin  
//      MsgBox('文件不存在',mbConfirmation, MB_OK);  
//    end;  
   // MsgBox('CurStepChanged:实际安装后调用', mbConfirmation, MB_OKCANCEL);  
//end;  
//end;  



