; �ű��� Inno Setup �ű������ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ����!

[Setup]
AppId= {{��}}
AppName= BetterPrinter
AppVerName= BetterPrinter_UV_PB_xp600_1H
;��˾����
;VersionInfoCompany=
;�汾��
VersionInfoVersion=1.1.0.0._.1.0.55.0   ;��Ȩ��VersionInfoCopyright=��
AppPublisher=��ɳ��ӡ���ܿƼ����޹�˾
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
SetupIconFile=F:\wwxʹ��\����\����ز�\BetterPrinter.ico
;��װ���򽫲���ʾ����ӭ����ҳ ,����Ϊ yes
DisableWelcomePage  = no

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"
Name: "eng"; MessagesFile: "compiler:languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkablealone

[Files]
Source: "F:\�ۺ���ϵ��\�������ͻ�����⡿����\V1.1ƽ̨\�����������ܣ�ƽ��UV��\BetterPrinter\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;USB����,���ݲ�ͬ��ϵͳ��װ��ͬ��������
[Types]
;Name: Full ;Description:"Ĭ�ϰ�װ";
;Name: Compact ;Description:"��లװ";
;Name: Custom; Description:"�Զ��尲װ"; Flags: iscustom           
[Components]
;��Ӱ�װ��ѡ��
;Name: main; Description:"������(��ѡ)";Types:full compact custom;Flags: fixed
;Name: data; Description:"�����ļ�";Types:full
;Name: help;Description:"�����ļ�";Types:full
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
Root: HKCR; Subkey: "Real ��ӡ�ļ�"; ValueType: String; ValueData: "Real ��ӡ�ļ�";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real ��ӡ�ļ�\DefaultIcon"; ValueType: String; ValueData: "{app}\BetterPrinter.ICO";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real ��ӡ�ļ�\shell\open\command"; ValueType: String; ValueData: "{app}\BetterPrinter.exe %1";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real ��ӡ�ļ�\shell\�� My Player ��(&O)\command"; ValueType: String; ValueData: "{app}\myplayer.exe %1";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.prn"; ValueType: String; ValueData: "Real ��ӡ�ļ�";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.prt"; ValueType: String; ValueData: "Real ��ӡ�ļ�";Flags: uninsdeletekey;Root: HKCR; Subkey: "*.ra"; ValueType: String; ValueData: "Real ��ӡ�ļ�";Flags: uninsdeletekey
 [ע��]
����HKA�������Software\Classes\.myp\OpenWithProgids����ֵ���ͣ��ַ�����ֵ���ƣ���MyProgramFile.myp����ֵ���ݣ���������־��uninsdeletevalue
��.myp�������ǹ�������չ������MyProgramFile.myp���Ǵ洢��ע����е��ļ����͵��ڲ����ơ���ȷ��Ϊ��ʹ��Ψһ���ƣ����������и�����һ��Ӧ�ó����ע����
����HKA�������Software\Classes\MyProgramFile.myp����ֵ���ͣ��ַ�����ֵ���ƣ�������ֵ���ݣ����ҵĳ����ļ�������־: uninsdeletekey
����ġ��ҵĳ����ļ�������Դ����������ʾ���ļ����͵����ơ�
����HKA�������Software\Classes\MyProgramFile.myp\DefaultIcon����ֵ���ͣ��ַ�����ֵ���ƣ�������ֵ���ݣ���{app}\MyProg.exe,0��
��DefaultIcon����ָ���������ļ����͹�����ͼ����ļ�����ע����",0" ������Դ������ʹ�� MyProg.exe �еĵ�һ��ͼ�ꡣ����,1����ʾ�ڶ���ͼ�ꡣ��
����HKA�������Software\Classes\MyProgramFile.myp\shell\open\command����ֵ���ͣ��ַ�����ֵ���ƣ�������ֵ����: """{app}\MyProg.exe"" ""%1"""
��shell\open\command����ע������ָ������Դ��������˫�������͵��ļ�ʱҪִ�еĳ�����Χ���������������У������������ȷ�����ļ�����
����HKA�������Software\Classes\Applications\MyProg.exe\SupportedTypes����ֵ���ͣ��ַ�����ֵ���ƣ���.myp����ֵ���ݣ�����

Root: HKCR; Subkey: "Real ��ӡ�ļ�"; ValueType: String; ValueData: "Real ��ӡ�ļ�";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real ��ӡ�ļ�\DefaultIcon"; ValueType: String; ValueData: "{app}\BetterPrinter.ICO";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real ��ӡ�ļ�\shell\open\command"; ValueType: String; ValueData: "{app}\BetterPrinter.exe %1";Flags: uninsdeletekey
Root: HKCR; Subkey: "Real ��ӡ�ļ�\shell\�� My Player ��(&O)\command"; ValueType: String; ValueData: "{app}\myplayer.exe %1";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.prn"; ValueType: String; ValueData: "Real ��ӡ�ļ�";Flags: uninsdeletekey
Root: HKCR; Subkey: "*.prt"; ValueType: String; ValueData: "Real ��ӡ�ļ�";Flags: uninsdeletekey
;Root: HKCR; Subkey: "*.ra"; ValueType: String; ValueData: "Real ��ӡ�ļ�";Flags: uninsdeletekey


[ע��]
����HKA�������Software\Classes\.myp\OpenWithProgids����ֵ���ͣ��ַ�����ֵ���ƣ���MyProgramFile.myp����ֵ���ݣ���������־��uninsdeletevalue
����HKA�������Software\Classes\MyProgramFile.myp����ֵ���ͣ��ַ�����ֵ���ƣ�������ֵ���ݣ����ҵĳ����ļ�������־: uninsdeletekey
����HKA�������Software\Classes\MyProgramFile.myp\DefaultIcon����ֵ���ͣ��ַ�����ֵ���ƣ�������ֵ���ݣ���{app}\MyProg.exe,0��
����HKA�������Software\Classes\MyProgramFile.myp\shell\open\command����ֵ���ͣ��ַ�����ֵ���ƣ�������ֵ����: """{app}\MyProg.exe"" ""%1"""
����HKA�������Software\Classes\Applications\MyProg.exe\SupportedTypes����ֵ���ͣ��ַ�����ֵ���ƣ���.myp����ֵ���ݣ�����

Root��HKA��Subkey����Software\Classes\.myp\OpenWithProgids����ValueType��String��ValueData����MyProgramFile.myp����ֵ���ݣ���������־��uninsdeletevalue
Root��HKA��Subkey����Software\Classes\MyProgramFile.myp����ValueType��String��ValueData��������ֵ���ݣ����ҵĳ����ļ�������־: uninsdeletekey
Root��HKA��Subkey����Software\Classes\MyProgramFile.myp\DefaultIcon����ValueType��String��ValueData��������ֵ���ݣ���{app}\MyProg.exe,0��
Root��HKA��Subkey����Software\Classes\MyProgramFile.myp\shell\open\command����ValueType��String��ValueData��������ֵ����: """{app}\MyProg.exe"" ""%1"""
Root��HKA��Subkey����Software\Classes\Applications\MyProg.exe\SupportedTypes����ValueType��String��ValueData����.myp����ֵ���ݣ�����

[Registry]
Root: HKA; Subkey: "Software\Classes\.myp\OpenWithProgids"; ValueType: string; ValueName: "MyProgramFile.myp"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\MyProgramFile.myp"; ValueType: string; ValueName: ""; ValueData: "My Program File"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\MyProgramFile.myp\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\MyProg.exe,0"
Root: HKA; Subkey: "Software\Classes\MyProgramFile.myp\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\MyProg.exe"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\MyProg.exe\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""


[Run]
Filename: "{app}\usb device\32bit\setup(X86).exe"; Flags: waituntilterminated;Check:Isx86
Filename: "{app}\usb device\64bit\setup(X64).exe"; Flags: waituntilterminated;Check:Isx64 
Filename: "{app}\vc_runtime\MSVBCRT AIO 2017.03.13 X86 X64.exe"; Flags: waituntilterminated;Check:Isx64
;Filename: "{app}\����˵��.txt"; Description: "����˵��"; Flags: postinstall shellexec skipifsilent
;��װ��ɺ�ɾ���ļ����ļ��� 
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
  
//�������innosetup���Զ����õģ�����װ���������ı�ʱ�����ͻᱻ����
procedure CurStepChanged(CurStep: TSetupStep);
var
ErrorCode: Integer;
isVerySilent: boolean;
j:Cardinal;

begin
  //ssDone�����ǵ��Finish���״̬�����������ϸ����
  if(CurStep=ssDone) then
  begin
       for j := 1 to ParamCount do
       begin
           //�������жϳ����Ƿ�Ϊ��Ĭ��װ�����򲻴���ҳ
           if(CompareText(ParamStr(j),'/verysilent')=0) then
               isVerySilent := true
       end;

       if(not isVerySilent) then
       begin
           ShellExec('open','http://www.better-printer.com/','','',SW_SHOWNORMAL,ewNoWait,ErrorCode);
       end;
  end;
end;

//����  
//procedure CurStepChanged(CurStep: TSetupStep);  
//var Isstr :string;  
//begin  
//if CurStep=ssInstall then       //ʵ�ʰ�װǰ����  
//begin  
    //MsgBox('CurStepChanged:ʵ�ʰ�װǰ����', mbConfirmation, MB_OKCANCEL);           //��װ��ɺ����  
//end;  
//if CurStep=ssPostInstall then  
//begin  
//    Isstr := ExpandConstant('{tmp}\tmp.rar');  
//    if FileExists(Isstr) then  
//    begin  
//      MsgBox('�ļ�����',mbConfirmation, MB_OK);  
//    end else  
//    begin  
//      MsgBox('�ļ�������',mbConfirmation, MB_OK);  
//    end;  
   // MsgBox('CurStepChanged:ʵ�ʰ�װ�����', mbConfirmation, MB_OKCANCEL);  
//end;  
//end;  


procedure TForm1.ButtonClick(Sender: TObject);       
var
  reg: TRegistry;
begin
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CLASSES_ROOT;

  {��ע����������������� .tst ��ʽ, ��ָ��Ĭ�����ֵ�� TestFile}
  reg.OpenKey('.tst', True);
  reg.WriteString('', 'TestFile');
  reg.CloseKey;

  {�ļ��򿪹���}
  reg.OpenKey('TestFile\shell\open\command', True);
  reg.WriteString('', ParamStr(0) + ' %1');
  reg.CloseKey;

  {�ļ�ͼ�����}
  reg.OpenKey('TestFile\DefaultIcon', True);
  reg.WriteString('', ParamStr(0) + ',0');
  reg.CloseKey;

  reg.Free;

  {ˢ��ͼ����ʾ}
  SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, nil, nil);
end;

{������������}
procedure TForm1.Button2Click(Sender: TObject);
var
  reg: TRegistry;
begin
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CLASSES_ROOT;
  reg.DeleteKey('.tst');
  reg.DeleteKey('TestFile');
  reg.Free;
  SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, nil, nil);
end;