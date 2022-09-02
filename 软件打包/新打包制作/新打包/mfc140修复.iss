; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "MFC140�޸�"
#define MyAppVersion "2.0"
#define MyAppPublisher ""
#define MyAppURL ""
#define MyAppExeName "dll�޸�"
#define MyAppAssocName MyAppName + " "
#define MyAppAssocExt ""
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt
#define Inputfile"F:\wwx\������\mfc140����"
#define OutPutName "mfc140dll�޸�"
#define OutPutFile "D:\Publish\Result"


[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (��Ҫ�����µ� GUID�����ڲ˵��е�� "����|���� GUID"��)
AppId={{165BD34B-7FB6-4B67-8322-B0C07051890B}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
; ������ȡ��ע�ͣ����ڷǹ���װģʽ�����У���Ϊ��ǰ�û���װ����
;PrivilegesRequired=lowest
OutputBaseFilename= {#OutPutName}
OutputDir= {#OutPutFile}
Compression=lzma
SolidCompression=yes
WizardStyle=modern
DisableWelcomePage  = yes

[Languages]
Name: "cn"; MessagesFile: "compiler:Default.isl"; 
Name: "en"; MessagesFile: "compiler:Languages\English.isl" ;

[Tasks]

[Files]
Source: "{#Inputfile}\win10\x86\*"; DestDir: "{win}\System32"; Flags: ignoreversion ; Check:Mysystemis('WIN10_32')
Source: "{#Inputfile}\win10\x64\*"; DestDir: "{win}\SysWOW64"; Flags: ignoreversion ; Check:Mysystemis('WIN10_64')
Source: "{#Inputfile}\win7\x86\*"; DestDir: "{win}\System32"; Flags: ignoreversion ; Check:Mysystemis('WIN7_32')
Source: "{#Inputfile}\win7\x64\*"; DestDir: "{win}\SysWOW64"; Flags: ignoreversion ; Check:Mysystemis('WIN7_64')
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Registry]

[Icons]

[Run]

[Code]
function Mygetwindosaversion:String;             //�ж�ϵͳ�汾
var Version:TWindowsVersion;
begin
     GetWindowsVersionEX(Version)
		 //win10
		 if(Version.Major=10)and(Version.Minor=0) then
		 begin
		       if(IsWin64)then                                                      
					  begin
					      Result:='WIN10_64';
					  end
						else
					      Result:='WIN10_32';
					  Exit;
			end;
					 //win11
		 if(Version.Major=20)and(Version.Minor=0) then
		 begin
		       if(IsWin64)then
					  begin
					      Result:='WIN10_64';
					  end
						else
					      Result:='WIN10_32';
					  Exit;
			end;
			 //win7
		 if(Version.Major=6)and(Version.Minor=1) then
		 begin
		       if(IsWin64)then
					  begin
					      Result:='WIN7_64';
					  end
						else
					      Result:='WIN7_32';
					  Exit;
			end;
						 //win8
		 if(Version.Major=6)and(Version.Minor=2) then
		 begin
		       if(IsWin64)then
					  begin
					      Result:='WIN10_64';
					  end
						else
					      Result:='WIN10_32';
					  Exit;
			end;
						 //win8.1
		 if(Version.Major=6)and(Version.Minor=3) then
		 begin
		       if(IsWin64)then
					  begin
					      Result:='WIN10_64';
					  end
						else
					      Result:='WIN10_32';
					  Exit;
			end;
						 //XP
		 if(Version.Major=5)and(Version.Minor=10) then
		 begin
					      Result:='WIN7_32';
					      Exit;
			end;
			Result:='OTHER';
end   ;

function Mysystemis(WinVers:String):Boolean   ;             //�б�ǰϵͳ�Ƿ���ָ��ϵͳ�ĺ���
begin
Result:=(Mygetwindosaversion=Uppercase(WinVers))    ;
end;


