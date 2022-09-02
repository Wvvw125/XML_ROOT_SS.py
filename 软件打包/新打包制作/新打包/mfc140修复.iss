; 脚本由 Inno Setup 脚本向导 生成！
; 有关创建 Inno Setup 脚本文件的详细资料请查阅帮助文档！

#define MyAppName "MFC140修复"
#define MyAppVersion "2.0"
#define MyAppPublisher ""
#define MyAppURL ""
#define MyAppExeName "dll修复"
#define MyAppAssocName MyAppName + " "
#define MyAppAssocExt ""
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt
#define Inputfile"F:\wwx\工具类\mfc140问题"
#define OutPutName "mfc140dll修复"
#define OutPutFile "D:\Publish\Result"


[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (若要生成新的 GUID，可在菜单中点击 "工具|生成 GUID"。)
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
; 以下行取消注释，以在非管理安装模式下运行（仅为当前用户安装）。
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
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”

[Registry]

[Icons]

[Run]

[Code]
function Mygetwindosaversion:String;             //判断系统版本
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

function Mysystemis(WinVers:String):Boolean   ;             //判别当前系统是否是指定系统的函数
begin
Result:=(Mygetwindosaversion=Uppercase(WinVers))    ;
end;


