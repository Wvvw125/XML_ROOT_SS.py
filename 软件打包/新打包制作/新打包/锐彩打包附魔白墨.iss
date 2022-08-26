; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!

#define URL ""
#define  AppName"UltraPrint"
#define   VerName"UltraPrint"        ;ϵͳ���������
#define   AppPublisher"���ſƼ�"  ;������
#define   OutPutName"7ɫ���+W_test";����ļ���
#define  InPutFile"F:\�ۺ���ϵ��\�������ͻ�����⡿����\V1.1ƽ̨\����\ǽ������ſƼ������ڣ�\��ӡ7ɫ�ײʵ�������\UltraPrint0912"
#define  Version"6C_W"

[Setup]
AppName={#AppName}
AppVerName=UltraPrint 
AppPublisher={#AppPublisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}
DefaultDirName={pf}\UltraPrint
DefaultGroupName=UltraPrint
;LicenseFile=F:\Publish\UltraPrint\License\CN\License.txt
;InfoBeforeFile=F:\Publish\UltraPrint\License\CN\Readme.txt
OutputDir=D:\Publish\Result
OutputBaseFilename={#OutPutName}
//��װ���򽫲���ʾ����ӭ����ҳ ,����Ϊ yes
DisableWelcomePage  = no

[Languages]
Name: "chi"; MessagesFile: "compiler:Default.isl"
;Name: "cn"; MessagesFile: "compiler:languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "{#InPutFile}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;win�����а�īѡ�  ע���б��Enable
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

; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��
[INI]
Filename: "{app}\UltraPrint.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.hosonsoft.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "http://www.hosonsoft.com/cn/post.asp"

[Icons]
Name: "{group}\UltraPrint.exe"; Filename: "{app}\UltraPrint.exe"; WorkingDir: "{app}"
Name: "{group}\UltraPrint.chm"; Filename: "{app}\UltraPrint.chm"
Name: "{group}\{cm:ProgramOnTheWeb,UltraPrint}"; Filename: "{app}\UltraPrint.url"
Name: "{group}\{cm:UninstallProgram,UltraPrint}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\���7C.exe"; Filename: "{app}\UltraPrint.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\UltraPrint.exe"; Filename: "{app}\UltraPrint.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]
;ɫ��
;(0:CMYK,1:YMCK,2KCMY)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "ColorOrder"; ValueData: 2; Flags: deletevalue

;�����ߵ�λΪ����
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "RulerUnit"; ValueData: 1; Flags: deletevalue

;Ĭ�ϼ�����ʽ
;(0:UP_LMPCS 1:UP_EXPCS 2:....)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "Halftone"; ValueData: 1; Flags: deletevalue

;ʸ���ļ�����
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "VectorQuality"; ValueData: 2; Flags: deletevalue

;ɫ�ʵ���ģʽ
;(0:ͨ��ģʽ,1:��ʵģʽ)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "ColorAdjustMode"; ValueData: 0; Flags: deletevalue

;�����װ���·��
;(��Ŀ¼��)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}\"; Flags: deletevalue

;����ļ���ʽ
;(0:PRN,1:PRT,2:BMP,3:TIFF)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "FileFormat"; ValueData: 0; Flags: deletevalue

;��īѡ��
;Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "WhiteInkEnable"; ValueData: 1; Flags: deletevalue

;�����ٽ�����ֵ
;(1,2,3...)(Ĭ����1,ֻ����1)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "CriticalZoomValue"; ValueData: 1; Flags: deletevalue

;Ĭ�ϴ�ӡ������
;(��ӡ��������)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "DefaultPrinterName"; ValueData: "UP-H3300(360)"; Flags: deletevalue

;Ĭ���ܶ�����
;(�ܶ���������)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "AdjustCurveName"; ValueData: "HS_���䲼_4color_180x740_4pass.cuv"; Flags: deletevalue

;Ĭ������ICC
;(��������)(һ�㲻Ҫ�Ķ�,Ĭ��Ϊ������׼:USWebCoatedSWOP.icc)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "InputCmykIcc"; ValueData: "USWebCoatedSWOP.icc"; Flags: deletevalue

;Ĭ�����ICC
;(��������)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "OutputIcc"; ValueData: "HS_���䲼_4color_180x740_4pass.icm"; Flags: deletevalue

;�Ƿ�ʹ��ICC
; (0:��ʹ��,1:ʹ��) ����Ķ�,��Զ��1
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "UseIccCvtCMYK"; ValueData: 1; Flags: deletevalue

; ��ɫ����
;���ǳɫŨ���൱����ɫŨ��(��)
;(0-100000:����0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "LightCyan"; ValueData: 3000; Flags: deletevalue

;ʵ��ʹ�õ����ǳɫŨ��(��)
;(0-100000:����0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "LightMagenta"; ValueData: 3000; Flags: deletevalue

;����ǳɫ�������ɫŨ��(��)
; (0-100000:����0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "LightCyanMax"; ValueData: 6000; Flags: deletevalue

;���ǳɫŨ���൱����ɫŨ��(Ʒ)
;(0-100000:����0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "LightMagentaMax"; ValueData: 6000; Flags: deletevalue

;ʵ��ʹ�õ����ǳɫŨ��(Ʒ)
;(0-100000:����0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "CyanMax"; ValueData: 6000; Flags: deletevalue

;���ǳɫŨ���൱����ɫŨ��(Ʒ)
; (0-100000:����0.00%-100.00%)
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "MagentaMax"; ValueData: 6000; Flags: deletevalue

;����������ʹ�õĵ�λΪ����
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "HorOverlapUnit"; ValueData: 2; Flags: deletevalue
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "VverOverlapUnit"; ValueData: 2; Flags: deletevalue

;����������Ĭ�ϵĲ��Ժ�ʵ�ʵĿ�߶���100����
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "VerTestValue"; ValueData: 100000; Flags: deletevalue
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "VerRealValue"; ValueData: 100000; Flags: deletevalue
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "HorTestValue"; ValueData: 100000; Flags: deletevalue
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "HorRealValue"; ValueData: 100000; Flags: deletevalue

;�µ��ļ�����λ��
Root: HKLM; Subkey: "SOFTWARE\GPL Ghostscript\8.60"; ValueType: string; ValueName: "GS_LIB"; ValueData: "{win}\hsu\lib;{win}\hsu\Resource;{win}\hsu\fonts;"; Flags: deletevalue


;��ɸ�
;��ʽ:��ɸ�:XXXX
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "LicenseUser"; ValueData: "��ɸ�: {#AppPublisher}"; Flags: deletevalue

;���к�
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "SerialNumber"; ValueData: "���к�: "; Flags: deletevalue

;�汾��
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "Version"; ValueData: "�汾��: {#Version}"; Flags: deletevalue

;��ī����
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: string; ValueName: "WhiteInkEnable"; ValueData: "1"; Flags: deletevalue

;�汾���
Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; ValueType: dword; ValueName: "VersionFlag"; ValueData: 1; Flags: deletevalue

Root: HKCU; Subkey: "Software\Hoson\upriper\GolInfo"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Hoson\upriper\RecentFileList"; Flags: uninsdeletekey
Root: HKCU; Subkey: "Software\Hoson\upriper\Settings"; Flags: uninsdeletekey

[Run]
;Filename: "{app}\Programe\Install.exe"; Parameters: "/x"
Filename: "{app}\���ʹ�ñؿ�.txt"; Description: "���ʹ�ñؿ�"; Flags: postinstall shellexec skipifsilent
Filename: "{app}\registering.url"; Description: "����ע��"; Flags: postinstall shellexec skipifsilent
[Code]

function ShouldSkipPage(PageID:Integer):Boolean;
begin
if PageID=wpSelectTasks then
result:=true;
if PageID=wpSelectComponents then
result:=true;
if PageID=wpSelectProgramGroup then
result:=true;
end;
//wpWelcome|��ӭҳ, wpLicense|Э��ҳ, wpPassword|����ҳ, wpInfoBefore, wpUserInfo,wpSelectDir|��װĿ¼,wpSelectComponents|���ҳ, 
//wpSelectProgramGroup|��ʼ�˵�Ŀ¼ҳ,wpSelectTasks|��������|��ݷ�ʽ, wpReady, wpPreparing,wpInstalling, wpInfoAfter, wpFinished

[UninstallDelete]
Type: files; Name: "{app}\UltraPrint.url"
;Type: filesandordirs; Name: "{app}"
Type: filesandordirs; Name: "{app}"

