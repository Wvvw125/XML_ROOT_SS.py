; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���
 
#define MyAppName "RemoteCard"
#define MyAppVersion "1.0"
#define MyAppPublisher "RemoteCard"
#define MyAppURL "http://www.example.com/"
#define MyAppExeName "RemoteCard.exe"
 
[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
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
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��
; ��װǰ�жϽ��̣�dll�ļ�����inno�İ�װĿ¼��
Source: compiler:psvince.dll; Flags: dontcopy
Source: compiler:IsTask.dll; Flags: dontcopy
[Icons]
//��ʼ�˵���ݷ�ʽ
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
//�����ݷ�ʽ
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
//��ʼ�˵�ж�س���
Name: {commonprograms}\ж�� {#MyAppName}; Filename:{uninstallexe}; WorkingDir: {app};
 
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
 
  //���ѡ��װĿ¼��ť
procedure btn_Browserclick(hBtn:HWND);
begin
  WizardForm.DirBrowseButton.Click;
  pathEdit.text := WizardForm.DirEdit.text;
end;
 
//���ذ�ť
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
 
//������װ��ť
procedure btn_setupclick(hBtn:HWND);
begin
  WizardForm.NextButton.Click;
 
  WizardForm.NextButton.Click;
end;
 
procedure pathEditChange(Sender: TObject);
begin
  WizardForm.DirEdit.text:=pathEdit.Text ;
end;
 
//��һ����ť
procedure btn_nextclick(hBtn:HWND);
begin
  WizardForm.NextButton.Click;
  licenseRich.Height:=;
  ImgSetVisibility(BGimg,false);
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\chcek_dir.png'),,,,,false,true);
  ImgApplyChanges(WizardForm.Handle);
  label3.Show;
  label2.Hide;
  label3.Caption:='��װλ��';
  pathEdit.show;
  BtnSetVisibility(btn_Browser,true);
  BtnSetVisibility(btn_setup,true);
  BtnSetVisibility(dirback,true);
  BtnSetVisibility(licenseCheck,false)
  BtnSetVisibility(licenseBtn,false)
  BtnSetVisibility(btn_next,false)
end;
 
//�û�Э��Ĺ�ѡ��
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
 
  //����Ķ�Э�鰴ť
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
 
//������
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
 
  //�����ť
  btn_Browser:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\btn_Browser.png'),,false)
  BtnSetEvent(btn_Browser,BtnClickEventID,WrapBtnCallback(@btn_Browserclick,));
  BtnSetVisibility(btn_Browser,false);
 
  //���ذ�ť
  dirback:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\back.png'),,false)
  BtnSetEvent(dirback,BtnClickEventID,WrapBtnCallback(@dirbackclick,));
  BtnSetVisibility(dirback,false);
 
  //������װ
  btn_setup:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\btn_steup.png'),,false)
  BtnSetEvent(btn_setup,BtnClickEventID,WrapBtnCallback(@btn_setupclick,));
  BtnSetVisibility(btn_setup,false);
 
  //ȡ��
  btn_cancel:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\btn_cancel.png'),,false)
  BtnSetEvent(btn_cancel,BtnClickEventID,WrapBtnCallback(@btn_cancelclick,));
  BtnSetVisibility(btn_cancel,false);
 
  //���Э�鹴ѡ��
  licenseCheck:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\checkbox.png'),,true)
  BtnSetEvent(licenseCheck,BtnClickEventID,WrapBtnCallback(@check_licenseclick,));
  BtnSetChecked(licenseCheck,true);
 
  //�Ķ����Э��
  licenseBtn:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\license.png'),,false)
  BtnSetEvent(licenseBtn,BtnClickEventID,WrapBtnCallback(@locklicenseclick,));
 
   //��һ��
  btn_next:=BtnCreate(WizardForm.Handle,,,,,ExpandConstant('{tmp}\btn_next.png'),,false)
  BtnSetEvent(btn_next,BtnClickEventID,WrapBtnCallback(@btn_nextclick,));
 
  label2:= TLabel.Create(WizardForm);
  with label2 do
  begin
  Parent := WizardForm;
  Caption := '�����Ķ�ͬ��EIP7Զ�̴�';
  Font.Size:=;
  Font.Name:='΢���ź�'
  Color := $
  Transparent := TRUE;
  SetBounds( ,,,)
  end;
 
  //��װ�����е���ʾ
  label3:= TLabel.Create(WizardForm);
  with label3 do
  begin
  Parent := WizardForm;
  Caption := '';
  Font.Size:=;
  Font.Name:='΢���ź�'
  Color := $
  Transparent := TRUE;
  SetBounds( ,,,)
  end;
 
  //��װ·����Ĭ�ϲ���ʾ
  pathEdit:= TEdit.Create(WizardForm);
  with pathEdit do
  begin
    Parent := WizardForm;
    text :=WizardForm.DirEdit.text;
    Font.Name:='΢���ź�'
    Font.Color:=$
    SetBounds(,,,);
    OnChange:=@pathEditChange;
    Color := $00ffffff
    TabStop :=false;
     Font.Size:=;
  end;
  pathEdit.Hide;
  pathEdit.AutoSelect:=true;
 
   //�������Э��
  licenseRich:= TRichEditViewer.Create(WizardForm);
  with licenseRich do
  begin
  Parent := WizardForm;
  ReadOnly:= true;
  SCROLLBARS:= ssVertical;
  font.Name:='΢���ź�'
  Color:=clWhite;
  SetBounds(,,,)
  Lines.LoadFromFile(ExpandConstant('{tmp}\license.rtf'));
  TabStop:=false;
  Height := ;
  end;
 
  PBOldProc:=SetWindowLong(WizardForm.ProgressGauge.Handle,-,PBCallBack(@PBProc,));
  Timer1 := TTimer.Create(WizardForm);
end;
 
 //�ù����ڰ�װ��ֹʱ�����ã�ע�⼰ʱ���û�û�а�װ�κ��ļ�֮ǰ�˳�Ҳ�ᱻ���á�
procedure DeinitializeSetup();
begin
  gdipShutdown;
end;
 
procedure CurPageChanged(CurPageID: Integer);
begin
  //��ԭʼ�İ�ť���ε�
  WizardForm.NextButton.Visible:=false;
  WizardForm.CancelButton.Height:=;
  WizardForm.BackButton.Height:=;
 
   //���밲װ����
  if CurPageID=wpWelcome then
  begin
 
   WizardForm.NextButton.Click;
   //����ͼƬ
  BGimg:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\bg1.png'),,,,,false,true);
  WizardForm.Width:=;
  WizardForm.Show;
  end
 
  //���ڰ�װ
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
  label3.Caption:='���ڰ�װ...';
  label3.SetBounds(,,,);
  label3.Font.Size:=;
  Timer1.Interval:=;
  end
 
  //��װ���
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
    if (PageID=wpSelectComponents)  then    //���������װ����
    result := true;
end;
 
//��װ��ж��ǰ���жϣ�http://blog.sina.com.cn/s/blog_a6fb6cc90102vh93.html
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
 
//��װǰ�ж��Ƿ�����
function InitializeSetup(): Boolean;
begin
  Result := true;
  if  IsAppRunning('{#MyAppExeName}') then
    begin
      if MsgBox('��װ�����⵽ {#MyAppName} �������У�'#''#'�������ǡ���ť�رճ��򲢼�����װ��'#''#'�������񡱰�ť�˳���װ��', mbConfirmation, MB_YESNO) = IDYES then
        begin
        KillTask('{#MyAppExeName}');
        Result:= true;
        end
      else
      Result:= false;
    end;
end;
 
//ж��ǰ�ж��Ƿ�����
function InitializeUninstall(): Boolean;
begin
  Result:= true;
  if  IsAppRunning('{#MyAppExeName}') then
  begin
  MsgBox('ж�س����⵽ {#MyAppName} �������У����˳����ٽ���ж�ز�����', mbInformation, MB_ICONINFORMATION)
  Result:= false;
  end;
end;
 
 //ж�غ�ɾ���ļ���
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  if CurUninstallStep = usDone then
  DelTree(ExpandConstant('{app}'), True, True, True);
end;

