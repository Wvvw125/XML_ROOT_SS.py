; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!

[Setup]
AppName= 灵彩数码
AppVerName=PrintExp 跑台DX_5
AppPublisher=Hosonsoft
AppPublisherURL=http://www.hosonsoft.com
AppSupportURL=http://www.hosonsoft.com
AppUpdatesURL=http://www.hosonsoft.com
DefaultDirName={pf}\灵彩数码
DefaultGroupName= 灵彩数码
;LicenseFile=F:\Publish\PrintExp\License\CN\License.txt
;InfoBeforeFile=F:\Publish\PrintExp\License\CN\Readme.txt
OutputDir=E:\Publish\Result
OutputBaseFilename= 跑台DX_5
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


;USB驱动,根据不同的系统安装不同的驱动程
Source: "E:\Program Files\PrintExp\USB Device\PrinterDrv.inf"; DestDir: "{win}\inf\"; Check: Isx64;
Source: "E:\Program Files\PrintExp\USB Device\PrinterDrv.sys"; DestDir: "{sys}\drivers\"; Check: Isx64;
Source: "E:\Program Files\PrintExp\USB Device\PrinterDrv.inf"; DestDir: "{win}\inf\"; Check: Isx86;
Source: "E:\Program Files\PrintExp\USB Device\PrinterDrv.sys"; DestDir: "{sys}\drivers\"; Check: Isx86;
Source: "E:\Program Files\PrintExp\USB Device\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "E:\Program Files\PrintExp\USB Device\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

;根据用户选择安装
Source: "E:\Program Files\PrintExp\language\langCfg.ini";Languages : cn; DestDir: "{app}\language"; Flags: ignoreversion
Source: "E:\Program Files\PrintExp\GenData\vmpc.cf"; Languages : cn; DestDir: "{app}\GenData"; Flags: ignoreversion;Components:HZYLKJ
Source: "E:\Program Files\PrintExp\CleanProcessSettings.exe"; Languages : cn; DestDir: "{app}"; Flags: ignoreversion;Components:HZYLKJ
Source: "E:\Program Files\PrintExp\awClearTest.exe"; Languages : cn; DestDir: "{app}"; Flags: ignoreversion;Components: HZYLKJ
    ;选择英文安装
Source: "E:\Program Files\PrintExp\language\langCfg.ini";Languages : eng; DestDir: "{app}\language"; Flags: ignoreversion
Source: "E:\Program Files\PrintExp\GenData\vmpc.cf"; Languages : eng; DestDir: "{app}\GenData"; Flags: ignoreversion;Components: HZYLKJ
Source: "E:\Program Files\PrintExp\CleanProcessSettings.exe"; Languages : eng; DestDir: "{app}"; Flags: ignoreversion;Components: HZYLKJ
Source: "E:\Program Files\PrintExp\awClearTest.exe"; Languages : eng; DestDir: "{app}"; Flags: ignoreversion;Components: HZYLKJ
Source: "E:\Program Files\PrintExp\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: HZYLKJ

[Types]
;Name: Full ;Description:"默认安装";
;Name: Compact ;Description:"简洁安装";
;Name: Custom; Description:"自定义安装"; Flags: iscustom            {0318605F-D236-422B-9470-2FD595618F5B}
[Components]
;添加安装可选项
;Name: main; Description:"主程序(必选)";Types:full compact custom;Flags: fixed
;Name: data; Description:"数据文件";Types:full
;Name: help;Description:"帮助文件";Types:full
Name: HZYLKJ; Description: "灵彩数码"; Flags:exclusive disablenouninstallwarning
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
Filename: "{app}\PrintExp.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.hosonsoft.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.hosonsoft.com/cn/post.asp"

[Icons]
Name: "{group}\PrintExp.exe"; Filename: "{app}\PrintExp.exe"; WorkingDir: "{app}"
;Name: "{group}\PrintExp.chm"; Filename: "{app}\PrintExp.chm"
Name: "{group}\{cm:ProgramOnTheWeb,PrintExp}"; Filename: "{app}\PrintExp.url"
Name: "{group}\{cm:UninstallProgram,PrintExp}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\灵彩数码"; Filename: "{app}\PrintExp"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\PrintExp.exe"; Filename: "{app}\PrintExp.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]

[Run]
Filename: "{app}\VC_x86Runtime\VC_x86Runtime.exe"; Flags: waituntilterminated
Filename: "{app}\USB Device\32bit\setup.exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\USB Device\32bit\setup.exe"; Flags: waituntilterminated;Check:Isx64
Filename: "{app}\USB Device\32bit\setup.exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\USB Device\32bit\setup.exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\更新说明.txt"; Description: "更新说明"; Flags: postinstall shellexec skipifsilent
;安装完成后删除文件及文件夹 
;Filename: "{cmd}"; Parameters: "/c del ""{app}\temp\cn\langCfg.ini"""; Flags: hidewizard runhidden
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\en"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\language\cn"""; Flags: hidewizard runhidden 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\en"""; Flags: hidewizard runhidden; 
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}\GenData\cn"""; Flags: hidewizard runhidden; 
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
