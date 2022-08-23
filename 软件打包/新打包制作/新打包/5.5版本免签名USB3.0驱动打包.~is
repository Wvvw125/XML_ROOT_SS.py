#define MyAppName "Drive USB 3.0"                                                          ;运行程序名
#define MyAppPublisher "长沙北印智能科技有限公司"                    ;发布者
#define MyAppVersion "0.0.3.0"                                                     ;版本号    2.0.0.0._.1.0.0.37
#define OutPutName " Device 3.0(5.5)"                       ;输出文件名
#define AppVerName  "BetterPrinter Drive USB3.0  "                     ;系统在组件名称
#define InPutFile"F:\驱动测试\二次封装\usb3.0"                                ;输入文件目录
#define AppHeight "420"             ;高
#define AppWidth  "620"             ;宽
#define DataPort  "USB3.0"         ;数据端口 
#define DirName"{tmp}"

#define AppID"BetterPrinterApp Drive 3.0"          ;{94663D78-3A80-47FE-A474-2ED2CB91C82D}
#define OutPutFile "D:\Publish\Result"
#define  IconFile"F:\驱动测试\二次封装\usb3.0\ico\BetterPrinterusb3.ICO"

[Setup]
AppId= {#AppID}
AppName= {#MyAppName}
AppVerName= {#AppVerName}
AppVersion={# MyAppVersion}
;版权号
versioninfocopyright=Copyright(c) 2021
;公司名称
;VersionInfoCompany=
;版本号
VersionInfoVersion={# MyAppVersion} VersionInfoProductTextVersion=⑤;VersionInfoCopyright=
AppPublisher={# MyAppPublisher} 
;目录名称
DefaultDirName={#DirName}  
DefaultGroupName= {#MyAppName}
;LicenseFile=F:\Publish\BetterPrinter\License\CN\License.txt
;InfoBeforeFile=F:\Publish\BetterPrinter\License\CN\Readme.txt
OutputDir= {#OutPutFile}
OutputBaseFilename=  {#OutPutName}
SolidCompression=no
;运行程序图标
SetupIconFile= {#IconFile}    
;安装界面侧边图片
WizardImageFile=F:\wwx使用\制作\打包素材\图1.bmp
;安装界面右上角标
WizardSmallImageFile=F:\wwx使用\制作\打包素材\BetterPrinter.bmp
;许可协议
WizardStyle=modern
;管理员权限安装
PrivilegesRequired=admin
;安装程序将不显示“欢迎”向导页 ,设置为 yes
DisableWelcomePage  = no
;安装、、获取系统语言
LanguageDetectionMethod=uilanguage
;选择语言安装界面显示
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
function SetUninstallIcon(iconPath:string): Boolean;   //更新卸载图标
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

//跳页功能
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
//wpWelcome|欢迎页, wpLicense|协议页, wpPassword|密码页, wpInfoBefore, wpUserInfo,wpSelectDir|安装目录,wpSelectComponents|组件页, 
//wpSelectProgramGroup|开始菜单目录页,wpSelectTasks|附加任务|快捷方式, wpReady, wpPreparing,wpInstalling, wpInfoAfter, wpFinished

procedure InitializeWizard(); 
begin
WizardForm.LICENSEACCEPTEDRADIO.Checked := true;//默认选择接受协议
//不显示接受协议和不接受协议的radio空间
 // WizardForm.Position:=poScreenCenter; // 位置屏幕居中
 WizardForm.Width:={#AppWidth};               // 宽
 WizardForm.Height:={#AppHeight};             // 高

end;
//在协议页面时更改【下一步】按钮显示的内容为【我接受】
procedure CurPageChanged(CurPageID: Integer);
begin
if CurPageID = wpLicense then
   WizardForm.NextButton.Caption := 'I Accept';
if CurPageID = wpFinished then
begin
    SetUninstallIcon(ExpandConstant('{#IconFile}'));  //更新卸载图标
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









