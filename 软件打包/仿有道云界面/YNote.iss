#define MyAppName "YNote"
[setup]
AppName={#MyAppName}
AppVersion=0.0.0.1
AppVerName={#MyAppName}
DefaultDirName={pf}\{#MyAppName}
OutputBaseFilename={#MyAppName}
Versioninfodescription={#MyAppName} 安装程序
versioninfocopyright=Copyright(c) 2016 
VersionInfoProductName={#MyAppName}
versioninfoversion=0.0.0.1
SetupIconFile=YNote.ico
UninstallIconFile=YNote.ico
OutputDir=.

Compression=lzma2/ultra64

DisableReadyPage=yes
DisableProgramGroupPage=yes
DirExistsWarning=no
DisableDirPage=yes
[Messages]
SetupAppTitle={#MyAppName} 安装向导
SetupWindowTitle={#MyAppName} 安装向导

[Files]
//onlyifdoesntexist 仅在文件不存在的时候 安装
Source: tmp\*; DestDir: {tmp}; Flags: dontcopy solidbreak ; Attribs: hidden system
Source: app\*; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;

[Icons]
Name: C:\ProgramData\Microsoft\Windows\Start Menu\Programs\有道Haroun\{#MyAppName}\{#MyAppName}; Filename: {app}\YNote.exe; WorkingDir: {app};
//开始菜单快捷方式
Name: C:\ProgramData\Microsoft\Windows\Start Menu\Programs\有道Haroun\{#MyAppName}\卸载 {#MyAppName}; Filename:{uninstallexe}; WorkingDir: {app}; 
//开始菜单卸载程序
Name: {commondesktop}\{#MyAppName}; Filename: {app}\YNote.exe; WorkingDir: {app}; 

//桌面快捷方式

[code]
#include  'dll.iss'


var
  label1,label2:TLabel;
  pathEditbkg,BGimg:longint;
  licenseBtn,MinBtn,CancelBtn,btn_Browser,btn_setup,btn5,btnBack:HWND;
  c_btn,xypd:boolean;
  pathEdit:tedit;
  licenseImg,progressbgImgbk,progressbgImg,PBOldProc:longint;
  Timer1: TTimer;
  licenseCheck,saveMyDirRadio,saveCustomDirRadio:HWND;
  licenseRich:TRichEditViewer;
  
Function StartMenu(): Boolean;
begin
  Result :=BtngetChecked(saveCustomDirRadio)
end;

Function desktop(): Boolean;
begin
  Result :=BtngetChecked(saveMyDirRadio)
end;
  
procedure CancelBtnOnClick(hBtn:HWND);
begin
// WizardForm.CancelButton.Click;
end;

procedure MinBtnOnClick(hBtn:HWND);
begin
SendMessage(WizardForm.Handle,WM_SYSCOMMAND,61472,0);
end;
  
procedure btn5click(hBtn:HWND);
begin
  if c_btn then
  begin
  BtnSetPosition(licenseCheck,22,475,15,15);
  BtnSetPosition(licenseBtn,100,475,108,15);
  BtnSetPosition(btn5,560,479,75,15);
  pathEdit.show;
  BtnSetVisibility(btn_Browser,true)
  WizardForm.Height:=508
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bigbg.png'),0,0,650,508,true,true);
  c_btn := false
  end else
  begin
  BtnSetPosition(licenseCheck,22,421,15,15);
  BtnSetPosition(licenseBtn,100,421,108,15);
  BtnSetPosition(btn5,560,421,75,15);
  pathEdit.Hide;
  BtnSetVisibility(btn_Browser,false)
  WizardForm.Height:=450
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\xy.png'),0,0,650,450,false,true);
  c_btn := true
  end;
  ImgApplyChanges(WizardForm.Handle)
end;

procedure btn_Browserclick(hBtn:HWND);
begin
 // WizardForm.DirBrowseButton.Click;
  pathEdit.text := WizardForm.DirEdit.text;
end;

procedure pathEditChange(Sender: TObject);
begin
  WizardForm.DirEdit.text:=pathEdit.Text ;
end;

procedure check_licenseclick(hBtn:HWND);
begin
    if BtnGetChecked(licenseCheck)=true then
    begin
       BtnSetEnabled(btn_setup,true)
    end
    else
    begin
       BtnSetEnabled(btn_setup,false)
    end
end;

procedure btn_setupclick(hBtn:HWND);
begin
//  WizardForm.NextButton.Click;
end;

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
    ImgSetPosition(progressbgImg,0,375,w,15);
    ImgSetVisiblePart(progressbgImg,0,0,w,15);
    ImgApplyChanges(WizardForm.Handle);
  end;
end;



procedure WizardMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture
  SendMessage(WizardForm.Handle, $0112, $F012, 0)
end;

var
 b1,b2,b3,b4,t1,t2,t3,t4,DHIMG1:Longint;
 js1,js2:integer;

procedure Timer1Timer(Sender: TObject);   //核心代码 时钟控制动画 需要inno5 增强版      代码.mad8834671
begin

  js2:=js2+10; //控制图片透明度
//if js2<650 then
//  begin
//  ImgSetTransparentEx(t1,t2,t3,t4,-650+js2)
//  end

  if  (js2>650) then      //控制图片透明度 计数归零
  begin
  js2:=0
  js1:=js1+1;
  end ;


if js2<650 then
begin
    //控制显示图片
  if js1=1 then
  begin
  ImgSetPosition(t1,-650+js2,0,650,374)
 // ImgSetVisibilityEx(t1,t2,t3,t4,1,0,0,0)
 //ImgSetVisibility(t1,true)
 ImgSetVisibility(t2,false)
 ImgSetVisibility(t3,false)
 ImgSetVisibility(t4,false)
 ImgSetVisibility(t1,true)
 
  end    ;
  if js1=2 then
  begin
  ImgSetPosition(t2,-650+js2,0,650,374)
  //ImgSetVisibilityEx(t1,t2,t3,t4,0,1,0,0)
 ImgSetVisibility(t1,false)

 ImgSetVisibility(t3,false)
 ImgSetVisibility(t4,false)
 ImgSetVisibility(t2,true)
 
 ImgSetVisibility(b1,true)
 ImgSetVisibility(b3,false)
 ImgSetVisibility(b4,false)
 ImgSetVisibility(b2,false)
  end ;
  if js1=3 then
  begin
  ImgSetPosition(t3,-650+js2,0,650,374)
 // ImgSetVisibilityEx(t1,t2,t3,t4,0,0,1,0)
 ImgSetVisibility(t1,false)
 ImgSetVisibility(t2,false)
 
 ImgSetVisibility(t4,false)
 ImgSetVisibility(t3,true)
 
 ImgSetVisibility(b1,false)
 ImgSetVisibility(b3,false)
 ImgSetVisibility(b4,false)
 ImgSetVisibility(b2,true)
  end  ;
  if js1=4 then
  begin
  ImgSetPosition(t4,-650+js2,0,650,374)
 // ImgSetVisibilityEx(t1,t2,t3,t4,0,0,0,1)
 ImgSetVisibility(t1,false)
 ImgSetVisibility(t2,false)
 ImgSetVisibility(t3,false)
 ImgSetVisibility(t4,true)
 
  ImgSetVisibility(b1,false)
 ImgSetVisibility(b3,true)
 ImgSetVisibility(b4,false)
 ImgSetVisibility(b2,false)
  end  ;
  if js1>4 then
  begin
  ImgSetPosition(t1,-650+js2,0,650,374)
 // ImgSetVisibilityEx(t1,t2,t3,t4,1,0,0,0)
  ImgSetVisibility(t2,false)
 ImgSetVisibility(t3,false)
 ImgSetVisibility(t4,false)
 ImgSetVisibility(t1,true)
 
 ImgSetVisibility(b1,false)
 ImgSetVisibility(b3,false)
 ImgSetVisibility(b4,true)
 ImgSetVisibility(b2,false)
 
  js1:=1
  end;
end;

//if (js2>260) and (js2<520) then  //控制图片透明度
//  begin
//  ImgSetTransparentEx(t1,t2,t3,t4,js2-255)
//  end

  ImgApplyChanges(WizardForm.Handle)
end;
procedure locklicenseclick(hBtn:HWND);
begin
if c_btn=false then
begin
  BtnSetPosition(licenseCheck,22,421,15,15);
  BtnSetPosition(licenseBtn,100,421,108,15);
  BtnSetPosition(btn5,560,421,75,15);
  pathEdit.Hide;
  BtnSetVisibility(btn_Browser,false)
  WizardForm.Height:=450
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\xy.png'),0,0,650,450,false,true);
  c_btn := true
 end  ;
if xypd=true 
    then  begin
    licenseImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg_license.png'),0,0,650,450,false,false);
    xypd:=false
    licenseRich.Height:=321
    BtnSetVisibility(licenseCheck,false)
    BtnSetVisibility(licenseBtn,false)
    BtnSetVisibility(btn5,false)
    BtnSetVisibility(btn_setup,false)
    BtnSetVisibility(btnBack,true)
//else     
    begin
    xypd:=true
    BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\xy.png'),0,0,650,450,false,true);
    licenseRich.Height:=0
    BtnSetVisibility(licenseCheck,true)
    BtnSetVisibility(licenseBtn,true)
    BtnSetVisibility(btn5,true)
    BtnSetVisibility(btn_setup,true)
    ImgRelease(licenseImg)
    BtnSetVisibility(btnBack,false)
  end  ;
    ImgApplyChanges(WizardForm.Handle)
end;
end;

procedure InitializeWizard();
begin
  WizardForm.OuterNotebook.hide;
  WizardForm.Bevel.Hide;
  WizardForm.BorderStyle:=bsnone;
  WizardForm.Position:=poDesktopCenter;
  WizardForm.Width:=650;
  WizardForm.Height:=508;
  WizardForm.Color:=clWhite ;
  xypd:=true;

  WizardForm.OnMouseDown:=@WizardMouseDown
  c_btn := true;
  
  ExtractTemporaryFile('bg_license.png');
  ExtractTemporaryFile('license.rtf');
  ExtractTemporaryFile('btn_n.png');
  ExtractTemporaryFile('btn_complete.png');
  ExtractTemporaryFile('btn_setup.png');
  ExtractTemporaryFile('xy.png');
  ExtractTemporaryFile('bigbg.png');
  ExtractTemporaryFile('btn_Browser.png');
  ExtractTemporaryFile('edit_Browser.png');
  
  ExtractTemporaryFile('loadingbk.png');
  ExtractTemporaryFile('loading.png');
  ExtractTemporaryFile('license.png');
  ExtractTemporaryFile('loading_pic1.png');
  ExtractTemporaryFile('loading_pic2.png');
  ExtractTemporaryFile('loading_pic3.png');
  ExtractTemporaryFile('loading_pic4.png');
  
  ExtractTemporaryFile('checkbox.png');
   ExtractTemporaryFile('checkboxdeep.png');
   
  ExtractTemporaryFile('loading_pic.png');
  ExtractTemporaryFile('finish_bg.png');
  ExtractTemporaryFile('btn_close.png');
  ExtractTemporaryFile('btn_min.png');
  ExtractTemporaryFile('back.png');
  CancelBtn:=BtnCreate(WizardForm.Handle,627,8,17,15,ExpandConstant('{tmp}\btn_close.png'),1,False)
  BtnSetEvent(CancelBtn,BtnClickEventID,WrapBtnCallback(@CancelBtnOnClick,1));
  
  MinBtn:=BtnCreate(WizardForm.Handle,607,8,17,15,ExpandConstant('{tmp}\btn_min.png'),1,False)
  BtnSetEvent(MinBtn,BtnClickEventID,WrapBtnCallback(@MinBtnOnClick,1));
  
  btn_setup:=BtnCreate(WizardForm.Handle,225,308,199,58,ExpandConstant('{tmp}\btn_setup.png'),1,False)
  BtnSetEvent(btn_setup,BtnClickEventID,WrapBtnCallback(@btn_setupclick,1));
  
  btnBack:=BtnCreate(WizardForm.Handle,274,380,102,42,ExpandConstant('{tmp}\back.png'),1,False)
  BtnSetEvent(btnBack,BtnClickEventID,WrapBtnCallback(@locklicenseclick,1));
  BtnSetVisibility(btnBack,false)
  
  pathEdit:= TEdit.Create(WizardForm);

  with pathEdit do
  begin
    Parent := WizardForm;
    text :=WizardForm.DirEdit.text;
    Font.Name:='宋体'
    BorderStyle:=bsNone;
    SetBounds(60,385,440,15)
    OnChange:=@pathEditChange;
    //Color := $00D0e2ff;    cl3dlight
    Color := $00FFE2D0
    TabStop :=false;
  end;
  pathEdit.Hide;
  //pathEditbkg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\edit_Browser.png'),60,385,500,15,FALSE,true);
  //ImgSetVisibility(pathEditbkg,true)
  // pathEditbkg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\edit_Browser.png'),95,340,298,24,FALSE,true);
  btn_Browser:=BtnCreate(WizardForm.Handle,520,375,82,32,ExpandConstant('{tmp}\btn_Browser.png'),1,False)
  BtnSetEvent(btn_Browser,BtnClickEventID,WrapBtnCallback(@btn_Browserclick,1));
  BtnSetVisibility(btn_Browser,false)
  
  btn5:=BtnCreate(WizardForm.Handle,560,421,75,15,ExpandConstant('{tmp}\btn_n.png'),1,False)
  BtnSetEvent(btn5,BtnClickEventID,WrapBtnCallback(@btn5click,1));

  PBOldProc:=SetWindowLong(WizardForm.ProgressGauge.Handle,-4,PBCallBack(@PBProc,4));

  Timer1 := TTimer.Create(WizardForm);
  with Timer1 do
  begin
    OnTimer := @Timer1Timer;
  end;
   js1:=1
   js2:=0
  licenseRich:= TRichEditViewer.Create(WizardForm);
  with licenseRich do
  begin
  Parent := WizardForm;
  ReadOnly:= true;
  SCROLLBARS:= ssVertical;
  font.Name:='宋体'
  Color:=clWhite;
  BorderStyle:= bsNone;
  SetBounds(42,36,567,187)
  Lines.LoadFromFile(ExpandConstant('{tmp}\license.rtf'));
  TabStop:=false;
  Height := 0;
  end;
  
  ImgApplyChanges(WizardForm.Handle)
end;



procedure DeinitializeSetup();
begin
  gdipShutdown;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  WizardForm.NextButton.Visible:=false;
  WizardForm.CancelButton.Height:=0;
  WizardForm.BackButton.Height:=0;
  if CurPageID=wpWelcome then
  begin
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\xy.png'),0,0,650,450,true,true);
  //pathEditbkg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\edit_Browser.png'),60,385,500,15,FALSE,true);
  
   //BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic.png'),0,0,650,450,false,true);
  // ImgSetPosition(BGimg,-100,0,650,450);
  //  ImgSetVisiblePart(progressbgImg,0,0,w,15);
  licenseBtn:=BtnCreate(WizardForm.Handle,100,421,108,15,ExpandConstant('{tmp}\license.png'),4,false)
  BtnSetEvent(licenseBtn,BtnClickEventID,WrapBtnCallback(@locklicenseclick,1));
  licenseCheck:=BtnCreate(WizardForm.Handle,22,421,15,15,ExpandConstant('{tmp}\checkboxdeep.png'),1,true)
  BtnSetEvent(licenseCheck,BtnClickEventID,WrapBtnCallback(@check_licenseclick,1));
  BtnSetChecked(licenseCheck,true)
  
  WizardForm.Width:=650;
  WizardForm.Height:=450;
  WizardForm.Show;
  end ;
  if CurPageID = wpInstalling then
  begin
  
   // ImgSetPosition(progressbgImg,0,400,650,10);
   // ImgSetVisiblePart(progressbgImg,0,0,0,10);
  BtnSetPosition(licenseCheck,560,421,75,15);
  BtnSetPosition(btn5,560,421,75,15);
  pathEdit.Hide;
  BtnSetVisibility(btn_Browser,false)
  WizardForm.Height:=450
 // BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\xy.png'),0,0,650,450,false,true);
  c_btn := true
  BtnSetVisibility(btn5,false);
  BtnSetVisibility(licenseBtn,false);
  BtnSetVisibility(licenseCheck,false);
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic.png'),0,0,650,450,false,true);
  
  progressbgImgbk:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loadingbk.png'),0,375,650,15,True,True);
  progressbgImg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading.png'),0,375,0,0,True,True);

  b1:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic1.png'),0,0,650,374,true,true);    //加载图片必备的
  b2:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic2.png'),0,0,650,374,true,true);
  b3:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic3.png'),0,0,650,374,true,true);
  b4:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic4.png'),0,0,650,374,true,true);

  
  t1:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic1.png'),0,0,650,374,true,true);    //加载图片必备的
  t2:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic2.png'),0,0,650,374,true,true);
  t3:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic3.png'),0,0,650,374,true,true);
  t4:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\loading_pic4.png'),0,0,650,374,true,true);

   


  ImgSetVisibility(t1,false)     //出现动画时 第一张显示的图片   下面几张禁用的
  ImgSetVisibility(t2,false)
  ImgSetVisibility(t3,false)
  ImgSetVisibility(t4,false)
  
  ImgSetVisibility(b1,false)     //出现动画时 第一张显示的图片   下面几张禁用的
  ImgSetVisibility(b2,false)
  ImgSetVisibility(b3,false)
  ImgSetVisibility(b4,false)
  
  BtnSetVisibility(btn_setup,false);
  Timer1.Interval:=50
  end;
  if CurPageID = wpFinished then
  begin
   Timer1.Interval:=0
   ImgSetVisibility(progressbgImgbk,false)
   ImgSetVisibility(progressbgImg,false)
   btn_setup:=BtnCreate(WizardForm.Handle,245,358,160,50,ExpandConstant('{tmp}\btn_complete.png'),1,False)
   BtnSetEvent(btn_setup,BtnClickEventID,WrapBtnCallback(@btn_setupclick,1));
   
    BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\finish_bg.png'),0,0,650,450,false,true);
   
   saveMyDirRadio:=BtnCreate(WizardForm.Handle,50,300,15,15,ExpandConstant('{tmp}\checkbox.png'),4,TRUE)
   saveCustomDirRadio:=BtnCreate(WizardForm.Handle,50,340,15,15,ExpandConstant('{tmp}\checkbox.png'),4,TRUE)
   
   
   label1:= TLabel.Create(WizardForm);
    with label1 do
    begin
    Parent := WizardForm;
    Caption := '运行有道笔记';
    Font.Name:='宋体'
    Transparent := TRUE;
    SetBounds(70 ,301,200,12)
   
    end;
   

   label2:= TLabel.Create(WizardForm);
    with label2 do
    begin
    Parent := WizardForm;
    Caption := '了解网页剪报功能';
    Font.Name:='宋体'
    Transparent := TRUE;
    SetBounds(70 ,341,200,12)

    end;
   
  end;
  
  ImgApplyChanges(WizardForm.Handle)
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
    if (PageID=wpSelectComponents)  then    //跳过组件安装界面
    result := true;
end;

