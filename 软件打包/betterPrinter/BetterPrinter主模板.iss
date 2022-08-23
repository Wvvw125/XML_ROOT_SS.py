; 脚本用 Inno Setup 脚本向导生成。
; 查阅文档获取创建 INNO SETUP 脚本文件详细资料!

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
end;

//重启  
//procedure CurStepChanged(CurStep: TSetupStep);  
//var Isstr :string;  
//begin  
//if CurStep=ssInstall then       //实际安装前调用  
//begin  
    //MsgBox('CurStepChanged:实际安装前调用', mbConfirmation, MB_OKCANCEL);           //安装完成后调用  
//end;  
//if CurStep=ssPostInstall then  
//begin  
//    Isstr := ExpandConstant('{tmp}\tmp.rar');  
//    if FileExists(Isstr) then  
//    begin  
//      MsgBox('文件存在',mbConfirmation, MB_OK);  
//    end else  
//    begin  
//      MsgBox('文件不存在',mbConfirmation, MB_OK);  
//    end;  
   // MsgBox('CurStepChanged:实际安装后调用', mbConfirmation, MB_OKCANCEL);  
//end;  
//end;  


procedure TForm1.ButtonClick(Sender: TObject);       
var
  reg: TRegistry;
begin
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CLASSES_ROOT;

  {在注册表中添加我们虚拟的 .tst 格式, 并指定默认项的值是 TestFile}
  reg.OpenKey('.tst', True);
  reg.WriteString('', 'TestFile');
  reg.CloseKey;

  {文件打开关联}
  reg.OpenKey('TestFile\shell\open\command', True);
  reg.WriteString('', ParamStr(0) + ' %1');
  reg.CloseKey;

  {文件图标关联}
  reg.OpenKey('TestFile\DefaultIcon', True);
  reg.WriteString('', ParamStr(0) + ',0');
  reg.CloseKey;

  reg.Free;

  {刷新图标显示}
  SHChangeNotify(SHCNE_ASSOCCHANGED, SHCNF_IDLIST, nil, nil);
end;

{清除上面的设置}
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