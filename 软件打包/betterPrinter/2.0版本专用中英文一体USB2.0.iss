; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!
#define MyAppName "BetterPrinterApp"                                        ;运行程序名
#define MyAppPublisher ""              ;公司名
#define MyAppVersion "2.0.0.0._.1.0.0.68 "                              ;版本号
#define MyAppExeName "BetterPrinterApp.exe"                           ;运行程序
#define OutPutName " BetterPrinterAppXp600-2.0"  ;输出文件名
#define AppVerName  "BetterPrinterApp"         ;系统在组件名称
#define DirName "D:\BetterPrinterApp_XP600"                          ;安装目录名
#define InPutFile"F:\售后体系库\……【客户软件库】……\V2.0平台\国内\深圳阳彩\BetterPrinterApp-双头白彩光油-20220415"
#define OutPutFile "D:\Publish\Result"
#define AppID"{{⑤}}"
#define AppHeight "480"        ;高
#define AppWidth  "680"        ;宽
#define USBdevice  "Device 2.0.exe"  #define vvpage "VCR_Hyb_x86_x64_16.10.2017.exe"
            
#define MyAppURL ""
#define MyAppAssocName  MyAppName + " 文件"
#define MyAppAssocExt ".prn" 
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

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
;安装程序将不显示“欢迎”向导页 ,设置为 yes
DisableWelcomePage  = no
;许可协议
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
;USB驱动,根据不同的系统安装不同的驱动程

[Messages]  


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
[Run]
Filename: "{app}\usb device\{#USBdevice}"; Flags: waituntilterminated;
Filename: "{app}\vc_runtime\{#vvpage}"; Flags: waituntilterminated;
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
[dirs]; Name:"{app}\WorkDir"

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






