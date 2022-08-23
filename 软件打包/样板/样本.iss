; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���
[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���  
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��  
; (�����µ�GUID����� ����|��IDE������GUID��)  
AppId={{A9861883-31C5-4324-BD9A-DC3271EEB675}  
;������  
AppName=ISsample  
;�汾��  
AppVerName=ISsample 1.0.0.0  
;��������  
AppPublisher=Hkiss  
;�������  
AppPublisherURL=http://zwkufo.blog.163.com  
AppSupportURL=http://zwkufo.blog.163.com  
AppUpdatesURL=http://zwkufo.blog.163.com  
;Ĭ�ϰ�װĿ¼  
DefaultDirName={pf}\ISsample  
;Ĭ�Ͽ�ʼ�˵���  
DefaultGroupName=ISsample  
;�Ƿ��->��ѡ��װ��ʼ�˵���  
;AllowNoIcons=yes  
;��װЭ��  
;LicenseFile=C:\Example\ԭʼ�ļ�\agreement.txt  
;��װǰ�鿴���ı��ļ�  
;InfoBeforeFile=C:\Example\ԭʼ�ļ�\Setup_New.txt  
;��װ��鿴�ı��ļ�  
;InfoAfterFile=C:\Example\ԭʼ�ļ�\Setup_Old.txt  
;����ļ���  
OutputDir=C:\Example\InnoSetup\out  
;����ļ���  
OutputBaseFilename=setup  
;��װͼ��  
SetupIconFile=C:\Example\ԭʼ�ļ�\title.ico  
;��װ��Ҫ��������  
;Password=123  
;Encryption=yes  

;��ע�汾��Ϣ  
VersionInfoCompany=HTTP://www.Hkiss.COM  
VersionInfoDescription=ISsample ������ǿ��  
VersionInfoCopyright=Copyright (C) 2007-2008 Hkiss  
 
;����ѡ������  
[Languages] 
Name: "chs"; MessagesFile: "compiler:Default.isl" ;LicenSeFile :"C:\Example\ԭʼ�ļ�\chs\agreement.txt"  
Name: "en"; MessagesFile: "compiler:Languages\English.isl";LicenSeFile :"C:\Example\ԭʼ�ļ�\en\agreement.txt"  
  
;�û���������  
[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked  
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked  
Name: "Tasks_1" ; Description:"�û��Զ�������1"; Flags: unchecked  
Name: "Tasks_2" ; Description:"�û��Զ�������2"; Flags: unchecked  
;ѡ��������Ż���ֵĶ�������  
Name: "Tasks_3" ; Description:"�û��Զ�������3";Components: c1 ; Flags: unchecked  
  
;�ļ���װ  
[Files]
;�����԰�װ��������    ��������Languages ������  
Source: "C:\Example\ԭʼ�ļ�\enfile.txt"; DestDir: "{app}"; Languages: en ; Flags: ignoreversion  
Source: "C:\Example\ԭʼ�ļ�\chsfile.txt"; DestDir: "{app}"; Languages: chs ; Flags: ignoreversion  
;�û��Զ������� Tasks  
Source: "C:\Example\ԭʼ�ļ�\Tasks\tasks_1.txt"; DestDir: "{app}\Tasks"; Flags: ignoreversion ;Tasks : Tasks_1  
Source: "C:\Example\ԭʼ�ļ�\Tasks\tasks_2.txt"; DestDir: "{app}\Tasks"; Flags: ignoreversion ;Tasks :Tasks_2  
Source: "C:\Example\ԭʼ�ļ�\Tasks\tasks_Components.txt"; DestDir: "{app}\Tasks"; Flags: ignoreversion ;Tasks :Tasks_2 
;�û����������װ  
Source: "C:\Example\ԭʼ�ļ�\Components\Components_1.txt"; DestDir: "{app}\Components"; Flags: ignoreversion ; Components: a1;  
Source: "C:\Example\ԭʼ�ļ�\Components\Components_2.txt"; DestDir: "{app}\Components"; Flags: ignoreversion ; Components: a2;  
Source: "C:\Example\ԭʼ�ļ�\Components\Components_3.txt"; DestDir: "{app}\Components"; Flags: ignoreversion ; Components: a3;  
Source: "C:\Example\ԭʼ�ļ�\Components\Components_4.txt"; DestDir: "{app}\Components"; Flags: ignoreversion ; Components: a1 a2 a3;  
 
;�û�ע���Զ���Dll�ļ�      regserver ע�� noregerror ����ʾ������Ϣ  
Source: "C:\Example\ԭʼ�ļ�\jmail.dll"; DestDir: "{app}"; Flags: ignoreversion regserver  
;��������ļ�  
Source: "C:\Example\ԭʼ�ļ�\ISsample.txt"; DestDir: "{app}"; Flags: ignoreversion  
;���һ���ļ��������ļ���{Tmp} deleteafterinstall ��װ��ɾ��  
Source: "C:\Example\ԭʼ�ļ�\test.exe"; DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall  
 
Source: "C:\Example\ԭʼ�ļ�\ISsample.chm"; DestDir: "{app}"; Flags: ignoreversion  
Source: "C:\Example\ԭʼ�ļ�\ISsample.exe"; DestDir: "{app}"; Flags: ignoreversion  
Source: "C:\Example\ԭʼ�ļ�\ISsample.dll"; DestDir: "{app}"; Flags: ignoreversion  
Source: "C:\Example\ԭʼ�ļ�\ISsample.ini"; DestDir: "{app}"; Flags: ignoreversion  
Source: "C:\Example\ԭʼ�ļ�\ISsample.rar"; DestDir: "{app}"; Flags: ignoreversion  
Source: "C:\Example\ԭʼ�ļ�\ISsample_sys.dll"; DestDir: "{win}\System32"; Flags: ignoreversion  
Source: "C:\Example\ԭʼ�ļ�\log\*"; DestDir: "{app}\log"; Flags: ignoreversion recursesubdirs createallsubdirs  
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��  
;��װ��������  
[Types]  
Name: Full ;Description:"��ȫ��װ"; Flags: iscustom  
Name: Compact ;Description:"��లװ";  
Name: Custom; Description:"�Զ��尲װ";  
;�����װ  
[Components]  
Name: c1; Description: "�Զ�������3" ; Types: Full  
Name: a1; Description: "��װComponents_1"; Types: Full Compact Custom ;  
Name: a2; Description: "��װComponents_2"; Types : Full   Compact  
Name: a3; Description: "��װComponents_3"; Types : Full  
  
;��ʼ�˵��������ݷ�ʽ  
[Icons]  
Name: "{group}\ISsample"; Filename: "{app}\ISsample.exe"  
Name: "{group}\{cm:ProgramOnTheWeb,ISsample}"; Filename: "http://zwkufo.blog.163.com"  
Name: "{group}\{cm:UninstallProgram,ISsample}"; Filename: "{uninstallexe}"  
Name: "{commondesktop}\ISsample"; Filename: "{app}\ISsample.exe"; Tasks: desktopicon  
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\ISsample"; Filename: "{app}\ISsample.exe"; Tasks: quicklaunchicon  
;���һ�������ĵ�  
Name: {group}\ISsample 1.0.0.0 �����ĵ�;Filename: {app}\ISsample.chm  
  
;�����ڳ���װ��ɺ� �ڰ�װ������ʾ���նԻ���֮ǰִ�г��� ���������������� ��ʾ�����ļ� ɾ����ʱ�ļ�  
[Run]  
Filename: "{app}\ISsample.exe"; Description: "{cm:LaunchProgram,ISsample}"; Flags: nowait postinstall skipifsilent  
Filename: "{app}\ISsample.txt"; Description: "�鿴��ʾ�����ļ�"; Flags: postinstall skipifsilent shellexec  
  
;������ʾ�ڳ�������ʾ����Ϣ�ı�  
[Messages]  
BeveledLabel=HKiss�Ƽ�  
;ж�ضԻ���˵��  
ConfirmUninstall=�������Ҫ�ӵ�����ж��ISsample��?%n%n�� [��] ����ȫɾ�� %1 �Լ������������;%n�� [��]������������������ĵ�����.  
;�����ѹ˵��  
;StatusExtractFiles=��ѹ�������������ļ�����ؿ��ļ�...  
  
;�������û�ϵͳ�д������޸Ļ�ɾ��ini�ļ���ֵ  
[INI]  
Filename: "{app}\cfg.ini"; Section: "Startup Options"; Flags: uninsdeletesection  
Filename: "{app}\cfg.ini"; Section: "Startup Options"; Key: "server ip"; String: "127.0.0.1"  
Filename: "{app}\cfg.ini"; Section: "Startup Options"; Key: "server port"; String: "8080"  
  
;�������û�ϵͳ�д������޸Ļ�ɾ��ע���ֵ  
[Registry]  
Root: HKLM ;SubKey:"Software\ISsample";ValueType:dword;ValueName:config;ValueData:10 ;Flags:uninsdeletevalue  
;��ִ�нű�  
[code]  
//ȫ�ֱ���  
var MyProgChecked: Boolean;  
  
//�жϳ����Ƿ����  
//��ʼ�������¼�  
function InitializeSetup(): boolean;  
var Isbl: boolean;         //��������  
var Isstr: string;  
begin       //��ʼ  
Isbl := true;             //������ֵ  
Isstr := '��ӭ';  
if RegValueExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\ISsample', 'config') then  
begin  
    MsgBox('�Ѱ�װ��������ж���ڰ�װ',mbConfirmation, MB_OK);  
    isbl := false;  
end else  
begin  
   //MsgBox('��ֵ',mbConfirmation, MB_OK);  
     isbl := true;  
end;  
  
//�����Ǹ��鷳�� ������� end else ע��  
//if MsgBox(Isstr, mbConfirmation, MB_OKCANCEL) = IDOK then  
//begin  
// isbl := true;  
// MsgBox('ִ����', mbConfirmation, MB_OK);  
//end else  
//begin  
// isbl := false;  
//MsgBox('ִ����', mbConfirmation, MB_OK);  
//end;  
  
Result := Isbl;  
end;       //����  
  
procedure CurStepChanged(CurStep: TSetupStep);  
var Isstr :string;  
begin  
if CurStep=ssInstall then       //ʵ�ʰ�װǰ����  
begin  
    //MsgBox('CurStepChanged:ʵ�ʰ�װǰ����', mbConfirmation, MB_OKCANCEL);           //��װ��ɺ����  
end;  
if CurStep=ssPostInstall then  
begin  
    Isstr := ExpandConstant('{tmp}\tmp.rar');  
//    if FileExists(Isstr) then  
//    begin  
//      MsgBox('�ļ�����',mbConfirmation, MB_OK);  
//    end else  
//    begin  
//      MsgBox('�ļ�������',mbConfirmation, MB_OK);  
//    end;  
   // MsgBox('CurStepChanged:ʵ�ʰ�װ�����', mbConfirmation, MB_OKCANCEL);  
end;  
end;  
  
//��һ�� ��ť��ť �¼�  
function NextButtonClick(CurPageID: Integer): Boolean;  
var ResultCode: Integer;  
var IsSetup : Boolean;  
begin  
IsSetup := true ;  
case CurPageID of  
    wpSelectDir:  
       MsgBox('NextButtonClick:' #13#13 'You selected: ''' + WizardDirValue + '''.', mbInformation, MB_OK);   //WizardDirValue·��  
    wpSelectProgramGroup:  
       MsgBox('NextButtonClick:' #13#13 'You selected: ''' + WizardGroupValue + '''.', mbInformation, MB_OK); //��ʼ�˵���  
    wpReady:  
      begin  
       if not RegValueExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Test', 'config') then   begin  
          if MsgBox('����ִ����ҪTest.ext,�Ƿ�װ!', mbConfirmation, MB_YESNO) = idYes then begin  
           ExtractTemporaryFile('test.exe');  
            if not Exec(ExpandConstant('{tmp}\test.exe'), '', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode) then  
              MsgBox('Test.exe����:' #13#13 ' ' + SysErrorMessage(ResultCode) + '.', mbError, MB_OK);  
          end else begin  
                IsSetup := false ;  
          end ;  
          BringToFrontAndRestore();  
        end;  
      end;  
end;  
Result := IsSetup;  
end;  

---------------------

�������� ahao1985507 ��CSDN ���� ��ȫ�ĵ�ַ������https://blog.csdn.net/ahao1985507/article/details/39182977?utm_source=copy 