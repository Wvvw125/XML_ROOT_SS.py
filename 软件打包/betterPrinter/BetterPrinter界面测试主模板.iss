; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!
#define MyAppName "BetterPrinter"
#define MyAppNameZh "BetterPrinter"
#define MyAppVersion "_version_"
#define MyAppPublisher "_appPublisher_"
#define MyAppURL "_appURL_"
#define MyAppExeName "BetterPrinter.exe"
#define OutputPath "_outputPath_"
#define OutputFileName "_outputFileName_"
#define SourceMain "_filesPath_\_name_.exe"
#define SourceFolder "_filesPath_\*"
#define LicenseFilePath "_resourcesPath_\license.txt"
#define SetupIconFilePath "_resourcesPath_\logo.ico"
#define MyAppId "_appId_"
#define ResourcesPath "_resourcesPath_\*"
[Setup]
AppId= {{⑤}}
AppName= BetterPrinter
AppVerName= BetterPrinter_UV_PB_xp600_1H
;公司名称
;VersionInfoCompany=
;版本号
VersionInfoVersion=1.1.0.0._.1.0.55.0   ;版权号VersionInfoCopyright=⑤
AppPublisher=长沙北印智能科技有限公司
AppPublisherURL=http://www.better-printer.com/
AppSupportURL=http://www.better-printer.com/
AppUpdatesURL=http://www.better-printer.com/
DefaultDirName=D:\BetterPrinter_PB_X600
DefaultGroupName= BetterPrinter
;LicenseFile=F:\Publish\BetterPrinter\License\CN\License.txt
;InfoBeforeFile=F:\Publish\BetterPrinter\License\CN\Readme.txt
OutputDir=D:\Publish\Result
OutputBaseFilename= BetterPrinter_xp600_3333H_4CW_B
SolidCompression=no
SetupIconFile=F:\wwx使用\制作\打包素材\BetterPrinter.ico
;安装程序将不显示“欢迎”向导页 ,设置为 yes
DisableWelcomePage  = no

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"
Name: "eng"; MessagesFile: "compiler:languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "F:\售后体系库\……【客户软件库】……\V1.1平台\深圳阳彩刘总（平板UV）\BetterPrinter\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
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
Name: LCSM; Description: "BetterPrinter_QD"; Flags:exclusive disablenouninstallwarning
  ;Name: SKY4180\EPSON_8H4C; Description: "EPSON_8H4C"; Flags:checkablealone  disablenouninstallwarning
  ;Name: SKY4180\EPSON_16H4C; Description: "EPSON_16H4C"; Flags:checkablealone  disablenouninstallwarning
 
[INI]
Filename: "{app}\BetterPrinter.url"; Section: "InternetShortcut"; Key: "URL"; String: "www.maet.com"
Filename: "{app}\registering.url"; Section: "InternetShortcut"; Key: "URL"; String: "www.maet.com"

[Icons]
Name: "{group}\BetterPrinter.exe"; Filename: "{app}\BetterPrinter.exe"; WorkingDir: "{app}"
;Name: "{group}\BetterPrinter.chm"; Filename: "{app}\BetterPrinter.chm"
Name: "{group}\{cm:ProgramOnTheWeb,BetterPrinter}"; Filename: "{app}\BetterPrinter.url"
Name: "{group}\{cm:UninstallProgram,BetterPrinter}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\BetterPrinter_QD"; Filename: "{app}\BetterPrinter"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\BetterPrinter.exe"; Filename: "{app}\BetterPrinter.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon

[Registry]
Root: HKCR; Subkey: "Real 打印文件"; ValueType: String; ValueData: "Real 打印文件";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real 打印文件\DefaultIcon"; ValueType: String; ValueData: "{app}\BetterPrinter.ICO";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real 打印文件\shell\open\command"; ValueType: String; ValueData: "{app}\BetterPrinter.exe %1";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real 打印文件\shell\用 My Player 打开(&O)\command"; ValueType: String; ValueData: "{app}\myplayer.exe %1";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.prn"; ValueType: String; ValueData: "Real 打印文件";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.prt"; ValueType: String; ValueData: "Real 打印文件";Flags: uninsdeletekey;Root: HKCR; Subkey: "*.ra"; ValueType: String; ValueData: "Real 打印文件";Flags: uninsdeletekey


[Run]
Filename: "{app}\usb device\32bit\setup(X86).exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\usb device\64bit\setup(X64).exe"; Flags: waituntilterminated;Check:Isx64 
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
  
//这个方法innosetup会自动调用的，当安装步骤有所改变时，它就会被触发
procedure CurStepChanged(CurStep: TSetupStep);
var
ErrorCode: Integer;
isVerySilent: boolean;
j:Cardinal;

begin
  //ssDone，就是点击Finish后的状态，后面会有详细解释
  if(CurStep=ssDone) then
  begin
       for j := 1 to ParamCount do
       begin
           //这里是判断程序是否为静默安装，是则不打开网页
           if(CompareText(ParamStr(j),'/verysilent')=0) then
               isVerySilent := true
       end;

       if(not isVerySilent) then
       begin
           ShellExec('open','http://www.better-printer.com/','','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
       end;
  end;
 
//for dll
 type
  TBtnEventProc = procedure (h:HWND);
  TPBProc = function(h:hWnd;Msg,wParam,lParam:Longint):Longint;  //百分比
  TTimerProc = procedure(h:longword; msg:longword; idevent:longword; dwTime:longword);
const
  Radius  = 9;
  GWL_EXSTYLE = (-20);
  //窗口移动
  WM_SYSCOMMAND = $0112;
  WS_EX_LAYERED = $80000;
  WS_EX_TRANSPARENT = $20;
  LWA_COLORKEY = 1;
  TransparentColor = clLime;  //要去掉的图片底色
  TransparentPercent = 80;
  BTN_MAX_PATH = 1024;
  BtnClickEventID      = 1;
  BtnMouseEnterEventID = 2;
  BtnMouseLeaveEventID = 3;
  BtnMouseMoveEventID  = 4;
  BtnMouseDownEventID  = 5;
  BtnMouseUpEventID    = 6;
//function WrapBtnCallback(Callback: TBtnEventProc; ParamCount: Integer): Longword;  external 'wrapcallback@files:innocallback.dll stdcall';
function  WrapTimerProc(callback: TTimerProc; Paramcount: Integer): Longword; external 'wrapcallback@files:innocallback.dll stdcall';
function  LoadCursorFromFile(FileName: String): Cardinal; external 'LoadCursorFromFile@user32 stdcall';
function  DeleteObject(p1: Longword): BOOL; external 'DeleteObject@gdi32.dll stdcall';
function  GetPM(nIndex:Integer):Integer; external 'GetSystemMetrics@user32.dll stdcall';
//botva2
function  ImgLoad(Wnd :HWND; FileName :PAnsiChar; Left, Top, Width, Height :integer; Stretch, IsBkg :boolean) :Longint; external 'ImgLoad@{tmp}\botva2.dll stdcall delayload';
procedure ImgSetVisibility(img :Longint; Visible :boolean); external 'ImgSetVisibility@{tmp}\botva2.dll stdcall delayload';
procedure ImgApplyChanges(h:HWND); external 'ImgApplyChanges@{tmp}\botva2.dll stdcall delayload';
procedure ImgSetPosition(img :Longint; NewLeft, NewTop, NewWidth, NewHeight :integer); external 'ImgSetPosition@files:botva2.dll stdcall';
procedure ImgRelease(img :Longint); external 'ImgRelease@{tmp}\botva2.dll stdcall delayload';
procedure gdipShutdown;  external 'gdipShutdown@{tmp}\botva2.dll stdcall delayload';
function  WrapBtnCallback(Callback: TBtnEventProc; ParamCount: Integer): Longword; external 'wrapcallback@{tmp}\innocallback.dll stdcall delayload';
function  BtnCreate(hParent:HWND; Left,Top,Width,Height:integer; FileName:PAnsiChar; ShadowWidth:integer; IsCheckBtn:boolean):HWND;  external 'BtnCreate@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetText(h:HWND; Text:PAnsiChar);  external 'BtnSetText@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetVisibility(h:HWND; Value:boolean); external 'BtnSetVisibility@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetFont(h:HWND; Font:Cardinal); external 'BtnSetFont@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetFontColor(h:HWND; NormalFontColor, FocusedFontColor, PressedFontColor, DisabledFontColor: Cardinal); external 'BtnSetFontColor@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetEvent(h:HWND; EventID:integer; Event:Longword); external 'BtnSetEvent@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetCursor(h:HWND; hCur:Cardinal); external 'BtnSetCursor@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetEnabled(h:HWND; Value:boolean); external 'BtnSetEnabled@{tmp}\botva2.dll stdcall delayload';
function  GetSysCursorHandle(id:integer):Cardinal; external 'GetSysCursorHandle@{tmp}\botva2.dll stdcall delayload';
function  BtnGetChecked(h:HWND):boolean; external 'BtnGetChecked@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetChecked(h:HWND; Value:boolean); external 'BtnSetChecked@{tmp}\botva2.dll stdcall delayload';
procedure CreateFormFromImage(h:HWND; FileName:PAnsiChar); external 'CreateFormFromImage@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetPosition(h:HWND; NewLeft, NewTop, NewWidth, NewHeight: integer);  external 'BtnSetPosition@{tmp}\botva2.dll stdcall delayload';
function  SetLayeredWindowAttributes(hwnd:HWND; crKey:Longint; bAlpha:byte; dwFlags:longint ):longint;
external  'SetLayeredWindowAttributes@user32 stdcall'; //函数声明
function  SetWindowLong(Wnd: HWnd; Index: Integer; NewLong: Longint): Longint; external 'SetWindowLongA@user32.dll stdcall';
function  PBCallBack(P:TPBProc;ParamCount:integer):LongWord; external 'wrapcallback@files:innocallback.dll stdcall';
function  CallWindowProc(lpPrevWndFunc: Longint; hWnd: HWND; Msg: UINT; wParam, lParam: Longint): Longint; external 'CallWindowProcA@user32.dll stdcall';
procedure ImgSetVisiblePart(img:Longint; NewLeft, NewTop, NewWidth, NewHeight : integer); external 'ImgSetVisiblePart@files:botva2.dll stdcall';
function  SetTimer(hWnd: LongWord; nIDEvent, uElapse: LongWord; lpTimerFunc: LongWord): LongWord; external 'SetTimer@user32.dll stdcall';
function  KillTimer(hWnd: LongWord; nIDEvent: LongWord): LongWord; external 'KillTimer@user32.dll stdcall';
function  GetWindowLong(Wnd: HWnd; Index: Integer): Longint; external 'GetWindowLongA@user32.dll stdcall';
function  ReleaseCapture(): Longint; external 'ReleaseCapture@user32.dll stdcall';
function  CreateRoundRectRgn(p1, p2, p3, p4, p5, p6: Integer): THandle; external 'CreateRoundRectRgn@gdi32 stdcall';
function  SetWindowRgn(hWnd: HWND; hRgn: THandle; bRedraw: Boolean): Integer; external 'SetWindowRgn@user32 stdcall';
procedure ShapeForm(aForm: TForm; edgeSize: integer); //圆角
  var
    FormRegion:LongWord;
  begin
    FormRegion:=CreateRoundRectRgn(0,0,aForm.Width,aForm.Height,edgeSize,edgeSize);
    SetWindowRgn(aForm.Handle,FormRegion,True);
  end;
// 安装前强制杀进
// 该函数在安装程序初始化时调用，返回False 将中断安装，True则继续安装.程
function InitializeSetup(): Boolean;
  var ErrorCode: Integer;
  begin
    ShellExec('open','taskkill.exe','/f /im {#MyAppExeName}','',SW_HIDE,ewNoWait,ErrorCode);
    ShellExec('open','tskill.exe',' {#MyAppName}','',SW_HIDE,ewNoWait,ErrorCode);
    result := True;
  end;
// 卸载前强制杀进程
function InitializeUninstall(): Boolean;
  var ErrorCode: Integer;
  begin
    ShellExec('open','taskkill.exe','/f /im {#MyAppExeName}','',SW_HIDE,ewNoWait,ErrorCode);
    ShellExec('open','tskill.exe',' {#MyAppName}','',SW_HIDE,ewNoWait,ErrorCode);
    result := True;
  end;
var
  BGimg:longint;
  btnShowLicense,MinBtn,CancelBtn,btnBrowser,btnSetup,btnBack:HWND;
  isWelcomePage:boolean;
  pathEdit:tedit;
  labelReadImg,licenseImg,progressbgImg,PBOldProc,labelAutoRunImg:longint;
  checkboxLicense,checkboxAutoRun:HWND;
  licenseRich:TRichEditViewer;
// 向导调用这个事件函数确定是否在所有页或不在一个特殊页 (用PageID 指定) 显示。如果返回True，将跳过该页；如果你返回False，该页被显示。
// 注意: 这个事件函数不被wpWelcome、wpPreparing 和wpInstalling 页调用，还有安装程序已经确定要跳过的页也不会调用
// wpWelcome, wpLicense, wpPassword, wpInfoBefore, wpUserInfo, wpSelectDir, wpSelectComponents, wpSelectProgramGroup, wpSelectTasks, wpReady, wpPreparing, wpInstalling, wpInfoAfter, wpFinished
function ShouldSkipPage(PageID: Integer): Boolean;
  begin
    if PageID=wpLicense then
      result:=true;
    if PageID=wpInfoBefore then
      result:=true;
    if PageID=wpUserInfo then
      result:=true;
    if PageID=wpSelectDir then
      result:=true;
    if PageID=wpSelectComponents then
      result:=true;
    if PageID=wpSelectProgramGroup then
      result:=true;
    if PageID=wpSelectTasks then
      result:=true;
  end;
// 关闭按钮
procedure CancelBtnOnClick(hBtn:HWND);
  begin
    WizardForm.CancelButton.Click;
  end;
// 最小化按钮
procedure MinBtnOnClick(hBtn:HWND);
  begin
    SendMessage(WizardForm.Handle,WM_SYSCOMMAND,61472,0);
  end;
// 浏览文件夹按钮
procedure btnBrowserclick(hBtn:HWND);
  begin
    WizardForm.DirBrowseButton.Click;
    pathEdit.text := WizardForm.DirEdit.text;
  end;
// 路径选择器 change
procedure pathEditChange(Sender: TObject);
  begin
    WizardForm.DirEdit.text:=pathEdit.Text ;
  end;
// 立即安装等按钮的操作就是不断地下一步
procedure nextSetpBtnClick(hBtn:HWND);
  begin
    WizardForm.NextButton.Click;
  end;
// 安装的进度条
function PBProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
  var
    pr,i1,i2 : Extended;
    w : integer;
  begin
    Result:=CallWindowProc(PBOldProc,h,Msg,wParam,lParam);
    if (Msg=$402) and (WizardForm.ProgressGauge.Position>WizardForm.ProgressGauge.Min) then
    begin
      i1:=WizardForm.ProgressGauge.Position-WizardForm.ProgressGauge.Min;
      i2:=WizardForm.ProgressGauge.Max-WizardForm.ProgressGauge.Min;
      pr:=i1*100/i2;
      w:=Round(650*pr/100);
      ImgSetPosition(progressbgImg,0,320,w,15);
      ImgSetVisiblePart(progressbgImg,0,0,w,15);
      ImgApplyChanges(WizardForm.Handle);
    end;
  end;
// 鼠标拖动
procedure WizardMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  begin
    ReleaseCapture
    SendMessage(WizardForm.Handle, $0112, $F012, 0)
  end;
// 查看 license
procedure btnShowLicenseClick(hBtn:HWND);
  begin
    if isWelcomePage=true then
    begin
      licenseImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg_license.png'),0,0,650,450,false,false);
      isWelcomePage:=false
      licenseRich.Height:=295
      BtnSetVisibility(checkboxLicense,false)
      BtnSetVisibility(btnShowLicense,false)
      BtnSetVisibility(btnSetup,false)
      BtnSetVisibility(btnBrowser,false)
      pathEdit.Hide
      BtnSetVisibility(btnBack,true)
    end else
    begin
      isWelcomePage:=true
      BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg_welcome.png'),0,0,650,450,false,true);
      labelReadImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\label_read.png'),243,398,72,20,false,true);
      licenseRich.Height:=0
      BtnSetVisibility(checkboxLicense,true)
      BtnSetVisibility(btnShowLicense,true)
      BtnSetVisibility(btnSetup,true)
      ImgRelease(licenseImg)
      BtnSetVisibility(btnBrowser,true)
      pathEdit.show
      BtnSetVisibility(btnBack,false)
    end
      ImgApplyChanges(WizardForm.Handle)
  end;
// 勾选查看 license
procedure checkboxLicenseClick(hBtn:HWND);
  begin
    if BtnGetChecked(checkboxLicense)=true then
    begin
      BtnSetEnabled(btnSetup,true)
    end else
    begin
      BtnSetEnabled(btnSetup,false)
    end
  end;
// 该过程在开始的时候改变向导或者向导页，不要指望使用InitializeSetup函数实现改变向导页的功能，因为InitializeSetup函数触发时向导窗口并不存在。
procedure InitializeWizard();
  begin
    // 设置欢迎向导页的尺寸大小
    WizardForm.OuterNotebook.hide;
    WizardForm.Bevel.Hide;
    WizardForm.BorderStyle:=bsnone;
    WizardForm.Position:=poDesktopCenter;
    // WizardForm.Center;
    WizardForm.Width:=650;
    WizardForm.Height:=450;
    // WizardForm.Color:=clWhite;
    WizardForm.OnMouseDown:=@WizardMouseDown
    isWelcomePage:=true;
    // WizardForm.InnerNotebook.Hide;
    // wizardform.Color:=TransparentColor;
    // 加载资源到 tmp 临时目录
    ExtractTemporaryFile('bg_welcome.png');
    ExtractTemporaryFile('bg_installing.png');
    ExtractTemporaryFile('bg_license.png');
    ExtractTemporaryFile('label_read.png');
    ExtractTemporaryFile('label_license.png');
    ExtractTemporaryFile('license.txt');
    ExtractTemporaryFile('btn_close.png');
    ExtractTemporaryFile('btn_min.png');
    ExtractTemporaryFile('btn_back.png');
    ExtractTemporaryFile('btn_setup.png');
    ExtractTemporaryFile('btn_browser.png');
    ExtractTemporaryFile('checkbox.png');
    ExtractTemporaryFile('bg_finished.png');
    ExtractTemporaryFile('btn_complete.png');
    ExtractTemporaryFile('loading.png');
    ExtractTemporaryFile('label_autorun.png');
    // 关闭按钮样式
    CancelBtn:=BtnCreate(WizardForm.Handle,627,8,12,12,ExpandConstant('{tmp}\btn_close.png'),1,False)
    BtnSetEvent(CancelBtn,BtnClickEventID,WrapBtnCallback(@CancelBtnOnClick,1));
    
    // 最小化按钮样式
    MinBtn:=BtnCreate(WizardForm.Handle,607,8,12,12,ExpandConstant('{tmp}\btn_min.png'),1,False)
    BtnSetEvent(MinBtn,BtnClickEventID,WrapBtnCallback(@MinBtnOnClick,1));
    
    // 立即安装按钮样式
    btnSetup:=BtnCreate(WizardForm.Handle,195,340,260,44,ExpandConstant('{tmp}\btn_setup.png'),1,False)
    BtnSetEvent(btnSetup,BtnClickEventID,WrapBtnCallback(@nextSetpBtnClick,1));
    
    // 返回按钮样式
    btnBack:=BtnCreate(WizardForm.Handle,285,390,80,32,ExpandConstant('{tmp}\btn_back.png'),1,False)
    BtnSetEvent(btnBack,BtnClickEventID,WrapBtnCallback(@btnShowLicenseClick,1));
    BtnSetVisibility(btnBack,false)
    
    pathEdit:= TEdit.Create(WizardForm);
    with pathEdit do
    begin
      Parent:=WizardForm;
      text:=WizardForm.DirEdit.text;
      Font.Name:='宋体'
      BorderStyle:=bsNone;
      SetBounds(110,272,340,15)
      OnChange:=@pathEditChange;
      TabStop:=false;
    end;
    // 浏览按钮样式
    btnBrowser:=BtnCreate(WizardForm.Handle,470,262,80,32,ExpandConstant('{tmp}\btn_browser.png'),1,False)
    BtnSetEvent(btnBrowser,BtnClickEventID,WrapBtnCallback(@btnBrowserclick,1));
    PBOldProc:=SetWindowLong(WizardForm.ProgressGauge.Handle,-4,PBCallBack(@PBProc,4));
    // 查看 license 的文本区域
    licenseRich:= TRichEditViewer.Create(WizardForm);
    with licenseRich do
    begin
      Parent:=WizardForm;
      ReadOnly:=true;
      SCROLLBARS:=ssVertical;
      font.Name:='宋体'
      Color:=clWhite;
      BorderStyle:=bsNone;
      SetBounds(40,65,570,0)
      Lines.LoadFromFile(ExpandConstant('{tmp}\license.txt'));
      TabStop:=false;
    end;
    
    ImgApplyChanges(WizardForm.Handle)
  end;
// 该过程在安装终止时被调用，注意及时在用户没有安装任何文件之前退出也会被调用。
procedure DeinitializeSetup();
  var RCode: Integer;
  begin
    // 检查是否需要自动运行
    if BtngetChecked(checkboxAutoRun)=true then
    begin
      Exec(ExpandConstant('{app}\{#MyAppExeName}'),'','',SW_SHOW, ewNoWait,RCode);
    end
    gdipShutdown;
  end;
// 在新向导页 (由CurPageID 指定) 显示后调用。
procedure CurPageChanged(CurPageID: Integer);
  begin
    // 默认的流程按钮隐藏掉
    WizardForm.NextButton.Visible:=false;
    WizardForm.CancelButton.Height:=0;
    WizardForm.BackButton.Height:=0;
    if CurPageID=wpWelcome then
      begin
        BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg_welcome.png'),0,0,650,450,true,true);
        // license 提示
        checkboxLicense:=BtnCreate(WizardForm.Handle,220,400,16,16,ExpandConstant('{tmp}\checkbox.png'),1,true)
        BtnSetEvent(checkboxLicense,BtnClickEventID,WrapBtnCallback(@checkboxLicenseClick,1))
        // 默认勾选 阅读并同意
        BtnSetChecked(checkboxLicense,true)
        labelReadImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\label_read.png'),243,398,72,20,false,true);
        btnShowLicense:=BtnCreate(WizardForm.Handle,320,398,117,20,ExpandConstant('{tmp}\label_license.png'),4,false)
        BtnSetEvent(btnShowLicense,BtnClickEventID,WrapBtnCallback(@btnShowLicenseClick,1))
        
        WizardForm.Width:=650;
        WizardForm.Height:=450;
        WizardForm.Show;
      end
    if CurPageID = wpInstalling then
      begin
        BtnSetPosition(checkboxLicense,560,421,75,15);
        pathEdit.Hide;
        BtnSetVisibility(btnBrowser,false)
        WizardForm.Height:=450
        BtnSetVisibility(btnShowLicense,false);
        BtnSetVisibility(checkboxLicense,false);
        BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg_installing.png'),0,0,650,450,false,true);
        
        progressbgImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading.png'),0,320,0,0,True,True);
        BtnSetVisibility(btnSetup,false);
      end
    if CurPageID = wpFinished then
      begin
        ImgSetVisibility(progressbgImg,false)
        btnSetup:=BtnCreate(WizardForm.Handle,195,340,260,44,ExpandConstant('{tmp}\btn_complete.png'),1,False)
        BtnSetEvent(btnSetup,BtnClickEventID,WrapBtnCallback(@nextSetpBtnClick,1));
        BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg_finished.png'),0,0,650,450,false,true);
        // 是否自动运行
        checkboxAutoRun:=BtnCreate(WizardForm.Handle,275,400,16,16,ExpandConstant('{tmp}\checkbox.png'),1,true)
        labelAutoRunImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\label_autorun.png'),295,398,84,20,false,true);
        // 默认勾选
        BtnSetChecked(checkboxAutoRun,true)
      end
    ImgApplyChanges(WizardForm.Handle)
  end;