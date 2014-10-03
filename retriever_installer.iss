; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0467A404-8C83-42A2-8C25-0903FBD14D9C}
AppName=EcoData Retriever
AppVersion=1.7.0
;AppVerName=EcoData Retriever 1.7.0
AppPublisher=Weecology
AppPublisherURL=http://ecodataretriever.org
AppSupportURL=http://ecodataretriever.org
AppUpdatesURL=http://ecodataretriever.org
DefaultDirName={pf}\EcoDataRetriever
DefaultGroupName=EcoData Retriever
OutputBaseFilename=RetrieverSetup
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
ChangesEnvironment=true

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: modifypath; Description: Add application directory to your environmental path

[Files]
Source: "dist\retriever.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "dist\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\EcoData Retriever"; Filename: "{app}\retriever.exe"
Name: "{group}\{cm:UninstallProgram,EcoData Retriever}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\EcoData Retriever"; Filename: "{app}\retriever.exe"; Tasks: desktopicon

[Code]
const
    ModPathName = 'modifypath';
    ModPathType = 'user';

function ModPathDir(): TArrayOfString;
begin
    setArrayLength(Result, 1)
    Result[0] := ExpandConstant('{app}');
end;
#include "modpath.iss"

[Run]
Filename: "{app}\retriever.exe"; Description: "{cm:LaunchProgram,EcoData Retriever}"; Flags: nowait postinstall skipifsilent
