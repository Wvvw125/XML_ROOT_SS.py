; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!
#define MyAppName "BetterPrinterApp"                                        ;运行程序名
#define MyAppPublisher "长沙北印智能科技有限公司"              ;发布者
#define MyAppVersion "2.0.0.0.|.1.0.0.39"                              ;版本号    2.0.0.0._.1.0.0.37
#define MyAppExeName "BetterPrinterApp.exe"                           ;运行程序
#define OutPutName " BetterPrinterAppTX800"  ;输出文件名
#define AppVerName  "BetterPrinterApp 2.0"                              ;系统在组件名称
#define DirName "D:\BetterPrinterApp_TX800"                          ;安装目录名
#define InPutFile"F:\售后体系库\……【客户软件库】……\V2.0平台\东升龙总\BetterPrinterApp_PB_4C(6C模式效果更好)"
#define AppHeight "420"        ;高
#define AppWidth  "620"        ;宽
#define DataPort  "USB2.0+ETH"         ;数据端口 

#define AppID"BetterPrinterApp 2.0"                 ;{94663D78-3A80-47FE-A474-2ED2CB91C82D}
#define OutPutFile "D:\Publish\Result"
#define MyAppURL "http://www.better-printer.com/"
#define MyAppAssocName  MyAppName + " 文件"
#define MyAppAssocExt ".prn" 
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt
#define  LicenseFileCN  "F:\wwx使用\制作\打包素材\许可协议\CN.txt"
#define  LicenseFileEN  "F:\wwx使用\制作\打包素材\许可协议\EN.txt"
#define  IconFile"F:\wwx使用\制作\打包素材\BetterPrinter.ico"

[Setup]
AppId= {#AppID}
AppName= {#MyAppName}
AppVerName= {#AppVerName}
AppVersion={# MyAppVersion}
//版权号
versioninfocopyright=Copyright(c) 2021
//公司名称
;VersionInfoCompany=
//版本号
VersionInfoVersion={# MyAppVersion} VersionInfoProductTextVersion=⑤//VersionInfoCopyright=
AppPublisher={# MyAppPublisher} 
AppPublisherURL={# MyAppURL}
AppSupportURL={# MyAppURL}
AppUpdatesURL={# MyAppURL}
//目录名称
DefaultDirName={#DirName}  
DefaultGroupName= {#MyAppName}
;LicenseFile=F:\Publish\BetterPrinter\License\CN\License.txt
;InfoBeforeFile=F:\Publish\BetterPrinter\License\CN\Readme.txt
OutputDir= {#OutPutFile}
OutputBaseFilename=  {#OutPutName}
SolidCompression=no
//运行程序图标
SetupIconFile= {#IconFile}    
//安装界面侧边图片
//WizardImageFile=F:\wwx使用\制作\打包素材\图1.bmp
//安装界面右上角标
WizardSmallImageFile=F:\wwx使用\制作\打包素材\BetterPrinter.bmp
//许可协议
WizardStyle=modern
ShowLanguageDialog=yes
//管理员权限安装
PrivilegesRequired=admin
//安装程序将不显示“欢迎”向导页 ,设置为 yes
DisableWelcomePage  = no

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"; LicenseFile:{#LicenseFileCN}
Name: "en"; MessagesFile: "compiler:Languages\English.isl" ; LicenseFile:{#LicenseFileEN}

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "{#InPutFile}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
//卸载保留  uninsneveruninstall       系统不存在则安装    onlyifdoesntexist
Source: "{#InPutFile}\SoftConfig\*"; DestDir: "{app}"; Flags:  uninsneveruninstall 
Source: PlugIn\waterctrl.dll; Flags: dontcopy
Source: Logo\WizModernImage-Is.bmp; Flags: dontcopy
Source: PlugIn\callnsis.dll; Flags: dontcopy
Source: PlugIn\AdvSplash.dll; Flags: dontcopy
Source: Logo\logo.bmp; Flags: dontcopy
Source: Logo\logo.wav; Flags: dontcopy

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
//设置开始界面  
cn.WelcomeLabel1=%n欢迎安装 {#MyAppName}打印系统   
cn.WelcomeLabel2=%n {#MyAppName}集各种打印头于一体的IJP系统%n%n-USB版：用于USB口{#MyAppName}功能平台%n%n-ETH版：用于网口{#MyAppName}功能平台%n%n%n%n%n  
//设置许可证协议界面  
cn.WizardLicense=许可证协议  
cn.LicenseLabel=在安装“{#MyAppName}”之前，请阅读%n授权协议  
//设置安装路径选择界面  
cn.WizardSelectDir=选择安装位置  
cn.SelectDirDesc=选择“{#MyAppName}”的安装文件夹  
cn.SelectDirLabel3=-安装程序将安装 {#MyAppName} 到下列文件夹%n%n-要安装到其他文件夹，单机[浏览(R)...]按钮并选择其他文件夹%n%n-点击[< 返回(B)]按钮返回上一个界面%n%n-选择[下一步(F) >]按钮继续安装 {#MyAppName}%n%n-选择[取消)(C)]按钮退出 {#MyAppName} 安装  
;CN.SelectDirBrowseLabel=  
;CN.DiskSpaceMBLabel=  
//设置组件安装界面  
cn.WizardSelectComponents=选择组件  
cn.SelectComponentsDesc=选择您想要安装的 {#MyAppName}系统 的组件  
cn.SelectComponentsLabel2=请选择您要安装的组件，清除您不想安装的组件。%n点击[下一步(F) >]按钮继续。  
//设置准备安装界面  
cn.WizardReady=准备安装  
cn.ReadyLabel1=安装程序将安装 {#MyAppName}
//ENG
//设置开始界面  
en.WelcomeLabel1=%nWelcome to install {#MyAppName} print system   
en.WelcomeLabel2=%n {#MyAppName} set all kinds of print heads in one IJP system %n%n-USB version: for USB port {#MyAppName} function platform %n%n-ETH version: for network port {#MyAppName} function platform%n%n%n%n%n
//设置许可证协议界面  
en.WizardLicense=License Agreement  
en.LicenseLabel=Please read the %n license agreement before installing "{#MyAppName}"  
//设置安装路径选择界面  
en.WizardSelectDir=Select an Installation position  
en.SelectDirDesc=Select the "{#MyAppName}" installation folder  
en.SelectDirLabel3=-Setup will install {#MyAppName} into the following folder %n%n- To install to other folders, standalone [Browse (R)] Button and select another folder %n %n - click on the [<BACK (B)] button to return to an interface on the %n %n - choose [NEXT (F) >] {#MyAppName} {#MyAppName}%n%n-Select the [CANCEL(C) ]button to exit {#MyAppName}The installation
;ENG.SelectDirBrowseLabel=  
;ENG.DiskSpaceMBLabel=  
//设置组件安装界面  
en.WizardSelectComponents=Select the component  
en.SelectComponentsDesc=Select the components of the {#MyAppName} system that you want to install  
en.SelectComponentsLabel2=Select the components you want to install and clear the ones you don't want to install. %n Click [Next (F) >] Button to continue.  
//设置准备安装界面  
en.WizardReady=Ready to install  
en.ReadyLabel1=Setup will install {#MyAppName}

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

[INI]
;Filename: "{app}\System\DeviceConfig.ini"; Section: "Device"; Key: "ip"; String: "0.0.0.0"; 
;Filename: "{app}\System\DeviceConfig.ini"; Section: "Device"; Key: "bufsize"; String: "512"; 
//清空语言选择
Filename: "{app}\System\DeviceConfig.ini"; Section: "config"; Key: "Language";String:;               
;Filename: "{app}\System\DeviceConfig.ini"; Section: "config"; Key: "path"; String: "TX800&Xp600-3H-4C-WO.xml" ;
;Filename: "{app}\System\DeviceConfig.ini"; Section: "config"; Key: "clean"; String: "Clean_0.xml";

[Icons]
Name: "{group}\{#MyAppExeName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"
//网页快捷方式创建
;Name: "{group}\{cm:ProgramOnTheWeb,BetterPrinter}"; Filename: "{app}\BetterPrinter.url"
Name: "{group}\{cm:UninstallProgram,BetterPrinter}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppName}"; WorkingDir: "{app}"; Tasks: desktopicon
;附件工具桌面快捷标创建
Name: "{userdesktop}\IP"; Filename: "{app}\IP\netscan.exe"; WorkingDir: "{app}"; Tasks: desktopicon     
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppExeName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: "{#MyAppAssocExt}"; ValueData: """{app}\{#MyAppExeName}"" "
Root:HKLM;Subkey:"Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall";ValueType: string; ValueName: "{#AppID}";ValueData:"{app}\ {#MyAppName}.exe";Flags: uninsdeletevalue

[Run]
Filename: "{app}\usb device\usb2.0\32bit\setup(X86).exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\usb device\usb2.0\64bit\setup(X64).exe"; Flags: waituntilterminated;Check:Isx64 
Filename: "{app}\vc_package\MSVBCRT AIO 2017.03.13 X86 X64.exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\更新说明.txt"; Description: "更新说明"; Flags: postinstall shellexec skipifsilent

[UninstallDelete]
;Type: files; Name: "{app}\BetterPrinter.url"
Type: filesandordirs; Name: "{app}"

;创建空文件夹
[dirs]
// Name:"{app}\WorkDir"

[Code]
procedure ExitProcess(exitCode:integer);
  external 'ExitProcess@kernel32.dll stdcall';

function SetUninstallIcon(iconPath:string): Boolean;   //更新卸载图标
var
  InstalledVersion,SubKeyName: String;
begin
if (IsWin64()) then begin
SubKeyName :=  'Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1';
    RegWriteStringValue(HKLM64,SubKeyName,'DisplayIcon',iconPath);
  end else begin
SubKeyName :=  'Software\Microsoft\Windows\CurrentVersion\Uninstall\{#AppID}_is1';
    RegWriteStringValue(HKLM,SubKeyName,'DisplayIcon',iconPath);
  end;
end;

 //闪屏音乐
function callplug(parentwnd: Integer; pluginname,funcname,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10: PAnsiChar): Integer;
external 'callplug@files:callnsis.dll stdcall';
//安装前卸载⑨软件使用
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
//安装前卸载⑨软件使用
function UnInstallOldVersion(): Integer;      
var
  sUnInstallString: String;
  iResultCode: Integer;
begin
{返回值:}  
{1 -卸载字符串为空}  
{2 -执行UnInstallString错误}  
{3 -成功执行UnInstallString}  
{默认返回值}  
  Result := 0;
 {获取旧应用程序的卸载字符串}
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
//关于
procedure AboutButtonOnClick(Sender: TObject);
begin
MsgBox('欢迎您使用由⑤制作的程序，该程序来自北印智能）', mbInformation, mb_Ok);
end;

//水波纹
function enablewater(ParentWnd: HWND; Left, Top: integer; Bmp: HBITMAP;
     WaterRadius, WaterHeight: integer): BOOL; external 'enablewater@files:waterctrl.dll stdcall';
//ParentWnd     放置特效窗口的父窗口句柄。
//Left          左位置
//Top           上位置
//Bmp           位图句柄。
//WaterRadius   水纹半径，会令到水纹看起来范围更广。
//WaterHeight   水纹高度，会令到水纹看起来更深。
//注意，水纹插件自动根据图片来设定高度和宽度，
//另外水纹底图必须是翻转的图片，显示的时候会翻转图片来显示。
function waterblob(x, y: integer; radius,height: integer):BOOL; external 'waterblob@files:waterctrl.dll stdcall';
// 在 x,y 点产生半径为radius, 高度为height 的水纹。
function flattenwater(): BOOL; external 'flattenwater@files:waterctrl.dll stdcall';
// 平伏所有水纹。
function disablewater(): BOOL; external 'disablewater@files:waterctrl.dll stdcall';
//释放水纹插件
function setwaterparent(ParentWnd:HWND): BOOL; external 'setwaterparent@files:waterctrl.dll stdcall';
//v2 新增，设置水纹插件的父句柄

//跳页功能
function ShouldSkipPage(PageID:Integer):Boolean;
begin
if PageID=wpSelectTasks then
result:=true;
if PageID=wpSelectComponents then
result:=true;
if PageID=wpSelectProgramGroup then
result:=true;
end;
//wpWelcome|欢迎页, wpLicense|协议页, wpPassword|密码页, wpInfoBefore, wpUserInfo,wpSelectDir|安装目录,wpSelectComponents|组件页, 
//wpSelectProgramGroup|开始菜单目录页,wpSelectTasks|附加任务|快捷方式, wpReady, wpPreparing,wpInstalling, wpInfoAfter, wpFinished

procedure InitializeWizard(); 
var  //水波纹
  bmp: TBitmap;
  val: Integer;
 AboutButton, CancelButton: TButton;

begin
  ExtractTemporaryFile('WizModernImage-Is.bmp');
  bmp := TBitmap.create;
  bmp.LoadFromFile(ExpandConstant('{tmp}\WizModernImage-Is.bmp'));
  enablewater(WizardForm.WelcomePage.Handle, 0, 0, bmp.Handle, 3, 50);
  //闪屏+音乐
  ExtractTemporaryFile('AdvSplash.dll');
  ExtractTemporaryFile('logo.bmp');
  ExtractTemporaryFile('logo.wav');
  val:=callplug(0,ExpandConstant('{tmp}\AdvSplash.dll'),'show','2800','1400','1200','-1',ExpandConstant('{tmp}\logo'),'','','','','');

  // 在 NSIS 的例子中调用是如下的：
  // SetOutPath $TEMP                               # 设置输出位置为临时目录
  // File /oname=logo.bmp "my_splash.bmp"           # 释放文件
  // File /oname=logo.wav "my_splashshit.wav"       # 释放文件
  // advsplash::show 2800 1400 1200 -1 $TEMP\spltmp # 调用插件
  // Pop $0                                         # 取返回值： 返回 '1' 表示用户提前关闭闪屏, 返回 '0' 表示闪屏正常结束, 返回 '-1' 表示闪屏显示出错
  // 基本上，调用的方法都是一样的，所以只要稍稍看看 NSIS 的插件例子，你就可以在 INNO 中利用以上方法进行调用

WizardForm.LICENSEACCEPTEDRADIO.Checked := true;//默认选择接受协议
//不显示接受协议和不接受协议的radio空间
WizardForm.LICENSEACCEPTEDRADIO.Visible := false;
WizardForm.LicenseNotAcceptedRadio.Visible := false;
WizardForm.BeveledLabel.Enabled:= True;  
WizardForm.BeveledLabel.Font.Color:= clblue; 
WizardForm.BeveledLabel.Font.Style := WizardForm.BeveledLabel.Font.Style + [fsBold];
WizardForm.BeveledLabel.Left := 5;  
 // 安装界面美化使用
 //WizardForm.OuterNotebook.hide;  // 隐藏默认的导向内容
 //WizardForm.Bevel.hide;          // 隐藏分隔线
 //WizardForm.BorderStyle:=bsnone;  // 边界隐藏
 // WizardForm.Position:=poScreenCenter; // 位置屏幕居中
 WizardForm.Width:={#AppWidth};               // 宽
 WizardForm.Height:={#AppHeight};             // 高
 // WizardForm.Color:=$00fd9804;        // 背景颜色
 //WizardForm.NextButton.hide;
 // WizardForm.OnMouseDown:=@WizardMouseDown       //拖拽
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
    MsgBox('点击了闪屏窗口，导致闪屏提前关闭！', mbConfirmation, MB_OK);
end;

//在协议页面时更改【下一步】按钮显示的内容为【我接受】
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

//这个方法innosetup会自动调用的，当安装步骤有所改变时，它就会被触发；安装结束打开官网
procedure CurStepChanged(CurStep: TSetupStep);
var
 ErrorCode: Integer;
 isVerySilent: boolean;
 j:Cardinal;
 LanguageName: string;
begin                 //安装前卸载⑨软件使用
  if (CurStep=ssInstall) then
  begin
    if (IsUpgrade()) then
    begin
      UnInstallOldVersion();
    end;
end;
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
end;





