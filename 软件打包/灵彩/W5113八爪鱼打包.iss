; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!

[Setup]
AppName= 灵彩数码
AppVerName= 灵彩BZYW_5113
AppPublisher= 灵彩BZY
AppPublisherURL=http://www.灵彩数码.com
AppSupportURL=http://www.灵彩数码.com
AppUpdatesURL=http://www.灵彩数码.com
DefaultDirName={pf}\ 灵彩BZY
DefaultGroupName= 灵彩数码
;LicenseFile=F:\Publish\PrintDream\License\CN\License.txt
;InfoBeforeFile=F:\Publish\PrintDream\License\CN\Readme.txt
OutputDir=E:\Publish\Result
OutputBaseFilename= 灵彩BZYW_5113
SolidCompression=yes
;安装程序将不显示“欢迎”向导页 ,设置为 yes
;DisableWelcomePage  = yes

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"
Name: "eng"; MessagesFile: "compiler:languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "E:\Program Files\八爪鱼\InkDream\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;USB驱动,根据不同的系统安装不同的驱动程
[Types]
;Name: Full ;Description:"默认安装";
;Name: Compact ;Description:"简洁安装";
;Name: Custom; Description:"自定义安装"; Flags: iscustom            {0318605F-D236-422B-9470-2FD595618F5B}
[Components]
;添加安装可选项
;Name: main; Description:"主程序(必选)";Types:full compact custom;Flags: fixed
;Name: data; Description:"数据文件";Types:full
;Name: help;Description:"帮助文件";Types:full
Name: LCSM; Description: "灵彩数码"; Flags:exclusive disablenouninstallwarning
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
Filename: "{app}\PrintDream.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.灵彩数码.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.灵彩数码.com/cn/post.asp"

[Icons]
Name: "{group}\PrintDream.exe"; Filename: "{app}\PrintDream.exe"; WorkingDir: "{app}"
;Name: "{group}\PrintDream.chm"; Filename: "{app}\PrintDream.chm"
Name: "{group}\{cm:ProgramOnTheWeb,PrintDream}"; Filename: "{app}\PrintDream.url"
Name: "{group}\{cm:UninstallProgram,PrintDream}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\灵彩BZY"; Filename: "{app}\PrintDream"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\PrintDream.exe"; Filename: "{app}\PrintDream.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]

[Run]
Filename: "{app}\vc_runtime\vcredist_x86.exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\vc_runtime\vcredist_x64.exe"; Flags: waituntilterminated;Check:Isx64
Filename: "{app}\usb device\32bit\setup(X86).exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\usb device\64bit\setup(X64).exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\更新说明.txt"; Description: "更新说明"; Flags: postinstall shellexec skipifsilent
;安装完成后删除文件及文件夹 
;Filename: "{cmd}"; Parameters: "/c del ""{app}\temp\cn\langCfg.ini"""; Flags: hidewizard runhidden
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\en"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\cn"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\en"""; Flags: hidewizard runhidden; 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\cn"""; Flags: hidewizard runhidden; 
[UninstallDelete]
Type: files; Name: "{app}\PrintDream.url"
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
