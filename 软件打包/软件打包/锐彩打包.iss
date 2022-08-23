; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!

#define URL ""
#define  AppName"UltraPrint"
#define   VerName""        ;版本号
#define
#define
#define
#define
#define
#define
#define
#define
[Setup]
AppName={#AppName}
AppVerName=UltraPrint BLD红狗一体版141110
AppPublisher=御澜科技
AppPublisherURL={#URL}
AppSupportURL=http://www.hosonsoft.com
AppUpdatesURL=http://www.hosonsoft.com
DefaultDirName={pf}\UltraPrint
DefaultGroupName=UltraPrint
;LicenseFile=F:\Publish\UltraPrint\License\CN\License.txt
;InfoBeforeFile=F:\Publish\UltraPrint\License\CN\Readme.txt
OutputDir=F:\Publish
OutputBaseFilename=SuTong_UltraPrint_BLD红狗一体版141110
SolidCompression=yes

[Languages]
Name: "chi"; MessagesFile: "compiler:Default.isl"
;Name: "cn"; MessagesFile: "compiler:languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "H:\Program Files (x86)\UltraPrint\软件使用必看.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "H:\Program Files (x86)\UltraPrint\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;win
Source: "C:\WINDOWS\hsu\lib\*"; DestDir: "{win}\hsu\lib"; Flags: ignoreversion
Source: "C:\WINDOWS\hsu\Resource\CMap\*"; DestDir: "{win}\hsu\Resource\CMap"; Flags: ignoreversion
Source: "C:\WINDOWS\hsu\Resource\ColorSpace\*"; DestDir: "{win}\hsu\Resource\ColorSpace"; Flags: ignoreversion
Source: "C:\WINDOWS\hsu\Resource\Decoding\*"; DestDir: "{win}\hsu\Resource\Decoding"; Flags: ignoreversion
Source: "C:\WINDOWS\hsu\Resource\Encoding\*"; DestDir: "{win}\hsu\Resource\Encoding"; Flags: ignoreversion
Source: "C:\WINDOWS\hsu\fonts\*"; DestDir: "{win}\hsu\fonts"; Flags: ignoreversion


;eyeone
Source: "C:\WINDOWS\inf\i1.inf"; DestDir: "{win}\inf\"; Flags: ignoreversion
Source: "C:\WINDOWS\inf\i1io2.inf"; DestDir: "{win}\inf\"; Flags: ignoreversion
Source: "C:\WINDOWS\system32\drivers\i1.sys"; DestDir: "{sys}\drivers\"; Flags: ignoreversion
Source: "C:\WINDOWS\system32\drivers\i1io2.sys"; DestDir: "{sys}\drivers\"; Flags: ignoreversion

; 注意: 不要在任何共享系统文件中使用“Flags: ignoreversion”
[INI]
Filename: "{app}\UltraPrint.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.hosonsoft.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.hosonsoft.com/cn/post.asp"

[Icons]
Name: "{group}\UltraPrint.exe"; Filename: "{app}\UltraPrint.exe"; WorkingDir: "{app}"
Name: "{group}\UltraPrint.chm"; Filename: "{app}\UltraPrint.chm"
Name: "{group}\{cm:ProgramOnTheWeb,UltraPrint}"; Filename: "{app}\UltraPrint.url"
Name: "{group}\{cm:UninstallProgram,UltraPrint}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\UltraPrint.exe"; Filename: "{app}\UltraPrint.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\UltraPrint.exe"; Filename: "{app}\UltraPrint.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]
;色序
;(0:CMYK,1:YMCK,2KCMY)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "ColorOrder"; ValueData: 2; Flags: deletevalue

;定义标尺单位为毫米
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "RulerUnit"; ValueData: 1; Flags: deletevalue

;默认加网方式
;(0:UP_LMPCS 1:UP_EXPCS 2:....)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "Halftone"; ValueData: 1; Flags: deletevalue

;矢量文件质量
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "VectorQuality"; ValueData: 2; Flags: deletevalue

;色彩调整模式
;(0:通用模式,1:真实模式)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "ColorAdjustMode"; ValueData: 0; Flags: deletevalue

;软件安装后的路径
;(根目录名)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}\"; Flags: deletevalue

;输出文件格式
;(0:PRN,1:PRT,2:BMP,3:TIFF)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "FileFormat"; ValueData: 0; Flags: deletevalue

;白墨选项
;Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "WhiteInkEnable"; ValueData: 1; Flags: deletevalue

;处理临界缩放值
;(1,2,3...)(默认是1,只能是1)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "CriticalZoomValue"; ValueData: 1; Flags: deletevalue

;默认打印机名称
;(打印机的名称)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "DefaultPrinterName"; ValueData: "UP-H3300(360)"; Flags: deletevalue

;默认密度曲线
;(密度曲线名称)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "AdjustCurveName"; ValueData: "HS_灯箱布_4color_180x740_4pass.cuv"; Flags: deletevalue

;默认输入ICC
;(曲线名称)(一般不要改动,默认为美国标准:USWebCoatedSWOP.icc)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "InputCmykIcc"; ValueData: "USWebCoatedSWOP.icc"; Flags: deletevalue

;默认输出ICC
;(曲线名称)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "OutputIcc"; ValueData: "HS_灯箱布_4color_180x740_4pass.icm"; Flags: deletevalue

;是否使用ICC
; (0:不使用,1:使用) 不需改动,永远是1
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "UseIccCvtCMYK"; ValueData: 1; Flags: deletevalue

; 六色参数
;最大浅色浓度相当于深色浓度(青)
;(0-100000:代表0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "LightCyan"; ValueData: 3000; Flags: deletevalue

;实际使用的最大浅色浓度(青)
;(0-100000:代表0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "LightMagenta"; ValueData: 3000; Flags: deletevalue

;包含浅色的最大深色浓度(青)
; (0-100000:代表0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "LightCyanMax"; ValueData: 6000; Flags: deletevalue

;最大浅色浓度相当于深色浓度(品)
;(0-100000:代表0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "LightMagentaMax"; ValueData: 6000; Flags: deletevalue

;实际使用的最大浅色浓度(品)
;(0-100000:代表0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "CyanMax"; ValueData: 6000; Flags: deletevalue

;最大浅色浓度相当于深色浓度(品)
; (0-100000:代表0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "MagentaMax"; ValueData: 6000; Flags: deletevalue

;定义误差补偿中使用的单位为厘米
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "HorOverlapUnit"; ValueData: 2; Flags: deletevalue
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "VverOverlapUnit"; ValueData: 2; Flags: deletevalue

;定义误差补偿中默认的测试和实际的宽高都是100厘米
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "VerTestValue"; ValueData: 100000; Flags: deletevalue
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "VerRealValue"; ValueData: 100000; Flags: deletevalue
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "HorTestValue"; ValueData: 100000; Flags: deletevalue
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "HorRealValue"; ValueData: 100000; Flags: deletevalue

;新的文件定义位置
Root: HKLM; Subkey: "SOFTWARE\GPL Ghostscript\8.60"; ValueType: string; ValueName: "GS_LIB"; ValueData: "{win}\hsu\lib;{win}\hsu\Resource;{win}\hsu\fonts;"; Flags: deletevalue


;许可给
;格式:许可给:XXXX
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "LicenseUser"; ValueData: "许可给: 御澜科技"; Flags: deletevalue

;序列号
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "SerialNumber"; ValueData: "序列号: 4KDQF84-V4B79TB-BJRR8C7-WVSLKEF"; Flags: deletevalue

;版本号
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "Version"; ValueData: "版本号: 红狗141110"; Flags: deletevalue

;版本标记
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "VersionFlag"; ValueData: 1; Flags: deletevalue

Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Hoson\upriper\RecentFileList"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Hoson\upriper\Settings"; Flags: uninsdeletekey

[Run]
;Filename: "{app}\Programe\Install.exe"; Parameters: "/x"
Filename: "{app}\软件使用必看.txt"; Description: "软件使用必看"; Flags: postinstall shellexec skipifsilent
Filename: "{app}\registering.url"; Description: "联网注册"; Flags: postinstall shellexec skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\UltraPrint.url"
;Type: filesandordirs; Name: "{app}"

