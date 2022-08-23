; 脚本由 Inno Setup 脚本向导 生成！
; 有关创建 Inno Setup 脚本文件的详细资料请查阅帮助文档！
 
#define MyAppName "RemoteCard"
#define MyAppVersion "1.0"
#define MyAppPublisher "RemoteCard"
#define MyAppURL "http://www.example.com/"
#define MyAppExeName "RemoteCard.exe"
 
[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (生成新的GUID，点击 工具|在IDE中生成GUID。)
AppId={{C19C0F44-A8D2-4863-AFAA-AED21E50C603}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir=app
OutputBaseFilename=RemoteCardInstall
SetupIconFile=tmp\RemoteCard.ico
Compression=lzma
SolidCompression=yes
 
[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"
 
[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone; OnlyBelowVersion: ,8.1
 
[Files]
Source: "RemoteCard.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "jre\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "tmp\*"; DestDir: "{tmp}"; Flags: dontcopy solidbreak ; Attribs: hidden system
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”
; 安装前判断进程，dll文件放在inno的安装目录中
Source: compiler:psvince.dll; Flags: dontcopy
Source: compiler:IsTask.dll; Flags: dontcopy
[Icons]
//开始菜单快捷方式
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
//桌面快捷方式
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
//开始菜单卸载程序
Name: {commonprograms}\卸载 {#MyAppName}; Filename:{uninstallexe}; WorkingDir: {app};
 
[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
 
[code]
#include  'dll.iss'
 
var
  label2,label3:TLabel;
  BGimg:longint;
  btn_next,licenseBtn,MinBtn,CancelBtn,btn_cancel,btn_Browser,btn_setup,dirback,btnBack:HWND;
  pathEdit:tedit;
  licenseImg,progressbgImgbk,progressImg,progressbgImg,PBOldProc:longint;
  Timer1: TTimer;
  licenseCheck:HWND;
  licenseRich:TRichEditViewer;
 
Function desktop(): Boolean;
begin
  Result :=true;
end;
 
procedure btn_cancelclick(hBtn:HWND);
begin
 WizardForm.CancelButton.Click;
end;
 
  //浏览选择安装目录按钮
procedure btn_Browserclick(hBtn:HWND);
begin
  WizardForm.DirBrowseButton.Click;
  pathEdit.text := WizardForm.DirEdit.text;
end;
 
//返回按钮
procedure dirbackclick(hBtn:HWND);
begin
  WizardForm.BackButton.Click;
  label2.Show;
  licenseRich.Height:=;
  ImgSetVisibility(BGimg,false);
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg1.png'),,,,,false,true);
  ImgApplyChanges(WizardForm.Handle);
  label3.Hide;
  pathEdit.Hide;
  BtnSetVisibility(btn_Browser,false);
  BtnSetVisibility(btn_setup,false);
  BtnSetVisibility(dirback,false);
  BtnSetVisibility(licenseCheck,true);
  BtnSetVisibility(licenseBtn,true);
  BtnSetVisibility(btn_next,true);
end;
 
//立即安装按钮
procedure btn_setupclick(hBtn:HWND);
begin
  WizardForm.NextButton.Click;
 
  WizardForm.NextButton.Click;
end;
 
procedure pathEditChange(Sender: TObject);
begin
  WizardForm.DirEdit.text:=pathEdit.Text ;
end;
 
//下一步按钮
procedure btn_nextclick(hBtn:HWND);
begin
  WizardForm.NextButton.Click;
  licenseRich.Height:=;
  ImgSetVisibility(BGimg,false);
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\chcek_dir.png'),,,,,false,true);
  ImgApplyChanges(WizardForm.Handle);
  label3.Show;
  label2.Hide;
  label3.Caption:='安装位置';
  pathEdit.show;
  BtnSetVisibility(btn_Browser,true);
  BtnSetVisibility(btn_setup,true);
  BtnSetVisibility(dirback,true);
  BtnSetVisibility(licenseCheck,false)
  BtnSetVisibility(licenseBtn,false)
  BtnSetVisibility(btn_next,false)
end;
 
//用户协议的勾选框
procedure check_licenseclick(hBtn:HWND);
begin
    if BtnGetChecked(licenseCheck)=true then
    begin
       BtnSetEnabled(btn_next,true)
    end
    else
    begin
       BtnSetEnabled(btn_next,false)
    end
end;
 
  //点击阅读协议按钮
procedure locklicenseclick(hBtn:HWND);
begin
  label2.Hide;
  licenseRich.Height:=
  ImgSetVisibility(BGimg,false);
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg_license.png'),,,,,false,true);
  ImgApplyChanges(WizardForm.Handle);
  BtnSetVisibility(licenseCheck,false)
  BtnSetVisibility(licenseBtn,false)
  BtnSetVisibility(btn_next,false)
  BtnSetVisibility(btn_setup,false)
  BtnSetVisibility(dirback,true);
end;
 
//进度条
function PBProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
var
  pr,i1,i2 : Extended;
  w : integer;
begin
  Result:=CallWindowProc(PBOldProc,h,Msg,wParam,lParam);
  if (Msg=$) and (WizardForm.ProgressGauge.Position>WizardForm.ProgressGauge.Min) then
  begin
    i1:=WizardForm.ProgressGauge.Position-WizardForm.ProgressGauge.Min;
    i2:=WizardForm.ProgressGauge.Max-WizardForm.ProgressGauge.Min;
    pr:=i1*/i2;
    w:=Round(*pr/);
    ImgSetPosition(progressImg,,,w,);
    ImgSetVisiblePart(progressImg,,,w,);
    ImgApplyChanges(WizardForm.Handle);
  end;
end;
 
procedure InitializeWizard();
begin
  WizardForm.OuterNotebook.hide;
  WizardForm.Bevel.Hide;
  WizardForm.Position:=poDesktopCenter;
  WizardForm.Width:=;
  WizardForm.Height:=;
  WizardForm.Color:=clWhite ;
 
  ExtractTemporaryFile('bg1.png');
  ExtractTemporaryFile('btn_next.png');
  ExtractTemporaryFile('checkbox.png');
  ExtractTemporaryFile('license.png');
 
  ExtractTemporaryFile('chcek_dir.png');
  ExtractTemporaryFile('btn_Browser.png');
  ExtractTemporaryFile('back.png');
  ExtractTemporaryFile('btn_steup.png');
 
  ExtractTemporaryFile('bg_license.png');
  ExtractTemporaryFile('license.rtf');
 
  ExtractTemporaryFile('loading_pic.png');
  ExtractTemporaryFile('btn_cancel.png');
  ExtractTemporaryFile('loading.png');
  ExtractTemporaryFile('loading_bg.png');
 
  ExtractTemporaryFile('btn_complete.png');
  ExtractTemporaryFile('finish_bg.png');
 
  //浏览按钮
  btn_Browser:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\btn_Browser.png'),,false)
  BtnSetEvent(btn_Browser,BtnClickEventID,WrapBtnCallback(@btn_Browserclick,));
  BtnSetVisibility(btn_Browser,false);
 
  //返回按钮
  dirback:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\back.png'),,false)
  BtnSetEvent(dirback,BtnClickEventID,WrapBtnCallback(@dirbackclick,));
  BtnSetVisibility(dirback,false);
 
  //立即安装
  btn_setup:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\btn_steup.png'),,false)
  BtnSetEvent(btn_setup,BtnClickEventID,WrapBtnCallback(@btn_setupclick,));
  BtnSetVisibility(btn_setup,false);
 
  //取消
  btn_cancel:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\btn_cancel.png'),,false)
  BtnSetEvent(btn_cancel,BtnClickEventID,WrapBtnCallback(@btn_cancelclick,));
  BtnSetVisibility(btn_cancel,false);
 
  //许可协议勾选框
  licenseCheck:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\checkbox.png'),,true)
  BtnSetEvent(licenseCheck,BtnClickEventID,WrapBtnCallback(@check_licenseclick,));
  BtnSetChecked(licenseCheck,true);
 
  //阅读许可协议
  licenseBtn:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\license.png'),,false)
  BtnSetEvent(licenseBtn,BtnClickEventID,WrapBtnCallback(@locklicenseclick,));
 
   //下一步
  btn_next:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\btn_next.png'),,false)
  BtnSetEvent(btn_next,BtnClickEventID,WrapBtnCallback(@btn_nextclick,));
 
  label2:= TLabel.Create(WizardForm);
  with label2 do
  begin
  Parent := WizardForm;
  Caption := '我已阅读同意EIP7远程打卡';
  Font.Size:=;
  Font.Name:='微软雅黑'
  Color := $
  Transparent := TRUE;
  SetBounds( ,,,)
  end;
 
  //安装过程中的提示
  label3:= TLabel.Create(WizardForm);
  with label3 do
  begin
  Parent := WizardForm;
  Caption := '';
  Font.Size:=;
  Font.Name:='微软雅黑'
  Color := $
  Transparent := TRUE;
  SetBounds( ,,,)
  end;
 
  //安装路径，默认不显示
  pathEdit:= TEdit.Create(WizardForm);
  with pathEdit do
  begin
    Parent := WizardForm;
    text :=WizardForm.DirEdit.text;
    Font.Name:='微软雅黑'
    Font.Color:=$
    SetBounds(,,,);
    OnChange:=@pathEditChange;
    Color := $00ffffff
    TabStop :=false;
     Font.Size:=;
  end;
  pathEdit.Hide;
  pathEdit.AutoSelect:=true;
 
   //加载许可协议
  licenseRich:= TRichEditViewer.Create(WizardForm);
  with licenseRich do
  begin
  Parent := WizardForm;
  ReadOnly:= true;
  SCROLLBARS:= ssVertical;
  font.Name:='微软雅黑'
  Color:=clWhite;
  SetBounds(,,,)
  Lines.LoadFromFile(ExpandConstant('{tmp}\license.rtf'));
  TabStop:=false;
  Height := ;
  end;
 
  PBOldProc:=SetWindowLong(WizardForm.ProgressGauge.Handle,-,PBCallBack(@PBProc,));
  Timer1 := TTimer.Create(WizardForm);
end;
 
 //该过程在安装终止时被调用，注意及时在用户没有安装任何文件之前退出也会被调用。
procedure DeinitializeSetup();
begin
  gdipShutdown;
end;
 
procedure CurPageChanged(CurPageID: Integer);
begin
  //把原始的按钮屏蔽掉
  WizardForm.NextButton.Visible:=false;
  WizardForm.CancelButton.Height:=;
  WizardForm.BackButton.Height:=;
 
   //进入安装界面
  if CurPageID=wpWelcome then
  begin
 
   WizardForm.NextButton.Click;
   //背景图片
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg1.png'),,,,,false,true);
  WizardForm.Width:=;
  WizardForm.Show;
  end
 
  //正在安装
  if CurPageID = wpInstalling then
  begin
  pathEdit.Hide;
  BtnSetVisibility(btn_Browser,false)
  WizardForm.Height:=
  BtnSetVisibility(dirback,false)
  BtnSetVisibility(licenseBtn,false);
  BtnSetVisibility(licenseCheck,false);
  BtnSetVisibility(btn_cancel,true);
  ImgSetVisibility(BGimg,false);
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic.png'),,,,,false,true);
  progressbgImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_bg.png'),,,,,true,true);
  progressImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading.png'),,,,,True,True);
  BtnSetVisibility(btn_setup,false);
  label2.Hide;
  label3.Show;
  label3.Caption:='正在安装...';
  label3.SetBounds(,,,);
  label3.Font.Size:=;
  Timer1.Interval:=;
  end
 
  //安装完成
  if CurPageID = wpFinished then
  begin
  Timer1.Interval:=
  ImgSetVisibility(progressbgImgbk,false)
  ImgSetVisibility(progressbgImg,false)
   ImgSetVisibility(progressImg,false)
  btn_setup:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\btn_complete.png'),,false)
  BtnSetEvent(btn_setup,BtnClickEventID,WrapBtnCallback(@btn_setupclick,));
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\finish_bg.png'),,,,,false,true);
  label3.Hide;
  label2.Hide;
  BtnSetVisibility(btn_cancel,false);
  end
 
  ImgApplyChanges(WizardForm.Handle)
end;
 
function ShouldSkipPage(PageID: Integer): Boolean;
begin
    if (PageID=wpSelectComponents)  then    //跳过组件安装界面
    result := true;
end;
 
//安装和卸载前的判断：http://blog.sina.com.cn/s/blog_a6fb6cc90102vh93.html
function RunTask(FileName: string; bFullpath: Boolean): Boolean;
external 'RunTask@files:ISTask.dll stdcall delayload';
function KillTask(ExeFileName: string): Integer;
external 'KillTask@files:ISTask.dll stdcall delayload';
function IsModuleLoaded(modulename: AnsiString ):  Boolean;
external 'IsModuleLoaded@files:psvince.dll stdcall';
function IsAppRunning(const FileName : string): Boolean;
var
    FSWbemLocator: Variant;
    FWMIService   : Variant;
    FWbemObjectSet: Variant;
begin
    Result := false;
    try
      FSWbemLocator := CreateOleObject('WBEMScripting.SWBEMLocator');
      FWMIService := FSWbemLocator.ConnectServer('', 'root\CIMV2', '', '');
      FWbemObjectSet := FWMIService.ExecQuery(Format('SELECT Name FROM Win32_Process Where Name="%s"',[FileName]));
      Result := (FWbemObjectSet.Count > );
      FWbemObjectSet := Unassigned;
      FWMIService := Unassigned;
      FSWbemLocator := Unassigned;
    except
      if (IsModuleLoaded(FileName)) then
        begin
          Result := false;
        end
      else
        begin
          Result := true;
        end
      end;
end;
 
//安装前判断是否运行
function InitializeSetup(): Boolean;
begin
  Result := true;
  if  IsAppRunning('{#MyAppExeName}') then
    begin
      if MsgBox('安装程序检测到 {#MyAppName} 正在运行！'#''#'单击“是”按钮关闭程序并继续安装；'#''#'单击“否”按钮退出安装！', mbConfirmation, MB_YESNO) = IDYES then
        begin
        KillTask('{#MyAppExeName}');
        Result:= true;
        end
      else
      Result:= false;
    end;
end;
 
//卸载前判断是否运行
function InitializeUninstall(): Boolean;
begin
  Result:= true;
  if  IsAppRunning('{#MyAppExeName}') then
  begin
  MsgBox('卸载程序检测到 {#MyAppName} 正在运行！请退出后再进行卸载操作！', mbInformation, MB_ICONINFORMATION)
  Result:= false;
  end;
end;
 
 //卸载后删除文件夹
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usDone then
  DelTree(ExpandConstant('{app}'), True, True, True);
end;

