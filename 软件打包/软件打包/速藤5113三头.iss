; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!

[Setup]
AppName=速藤5113
AppVerName=速藤5113
AppPublisher=杭州御澜科技有限公司
AppPublisherURL=http://www.hv-print.com
AppSupportURL=http://www.hv-print.com
AppUpdatesURL=http://www.hv-print.com
DefaultDirName={pf}\速藤5113
DefaultGroupName=速藤5113
;LicenseFile=F:\Publish\PrintExp\License\CN\License.txt
;InfoBeforeFile=F:\Publish\PrintExp\License\CN\Readme.txt
OutputDir=D:\1研发测试\新建文件夹
OutputBaseFilename=速藤5113
SolidCompression=yes

[Languages]
Name: "chi"; MessagesFile: "compiler:Default.isl"
;Name: "cn"; MessagesFile: "compiler:languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "D:\1研发测试\新建文件夹\PrintExp\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

;USB驱动
;Source: "D:\1研发测试\新建文件夹\PrintExp\USB Device\cyusb3.inf"; DestDir: "{win}\inf\"; Flags: ignoreversion
;Source: "D:\1研发测试\新建文件夹\PrintExp\USB Device\cyusb3.sys"; DestDir: "{sys}\drivers\"; Flags: ignoreversion

[INI]
Filename: "{app}\PrintExp.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.hv-print.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.hv-print.com/cn/post.asp"

[Icons]
Name: "{group}\PrintExp.exe"; Filename: "{app}\PrintExp.exe"; WorkingDir: "{app}"
;Name: "{group}\PrintExp.chm"; Filename: "{app}\PrintExp.chm"
Name: "{group}\{cm:ProgramOnTheWeb,PrintExp}"; Filename: "{app}\PrintExp.url"
Name: "{group}\{cm:UninstallProgram,PrintExp}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\PrintExp.exe"; Filename: "{app}\PrintExp.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\PrintExp.exe"; Filename: "{app}\PrintExp.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]

[Run]
Filename: "{app}\VC_x86Runtime\VC_x86Runtime.exe"; Flags: waituntilterminated
Filename: "{app}\USB Device\32bit\setup.exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\USB Device\32bit\setup.exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\更新说明.txt"; Description: "更新说明"; Flags: postinstall shellexec skipifsilent


[UninstallDelete]
Type: files; Name: "{app}\PrintExp.url"
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
