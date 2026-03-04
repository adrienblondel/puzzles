; ============================================
; Pixel Puzzles Ultimate - Auto-Solve Mod Installer
; ============================================
; Build: iscc installer.iss
; Output: Output/PPU_AutoSolve_Setup.exe

#define MyAppName "PPU Auto-Solve Mod"
#ifndef MyAppVersion
  #define MyAppVersion "1.0"
#endif
#define MyAppPublisher "PPU Mod"

[Setup]
AppId={{A7F3B2C1-4D5E-6F78-9A0B-C1D2E3F4A5B6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={code:GetGamePath}
DirExistsWarning=no
DisableProgramGroupPage=yes
OutputBaseFilename=PPU_AutoSolve_v{#MyAppVersion}_Setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
Uninstallable=yes
UninstallFilesDir={app}\ppu_mod_uninstall
CreateUninstallRegKey=yes

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Messages]
french.WelcomeLabel2=Ce programme va installer le mod Auto-Solve pour Pixel Puzzles Ultimate.%n%nLe mod ajoute :%n- F9 : resoudre instantanement le puzzle en cours%n- F10 : resoudre automatiquement tous les puzzles%n- F11 : arreter l'auto-solve%n%nLe jeu doit etre ferme avant de continuer.
french.SelectDirLabel3=Selectionnez le dossier d'installation de Pixel Puzzles Ultimate.%nLe fichier data.win doit s'y trouver.
french.FinishedLabel=L'installation du mod est terminee.%n%nRaccourcis :%n  F9 = solve instantane%n  F10 = auto-solve all (pause/resume)%n  F11 = arreter%n%nConfiguration : editez autosolve.ini dans le dossier du jeu.

[Files]
; UTMT CLI — extrait dans {tmp}\utmt pendant l'install, nettoye automatiquement
Source: "utmt\*"; DestDir: "{tmp}\utmt"; Flags: ignoreversion recursesubdirs
; Patches GML — extrait dans {tmp}\patches
Source: "patches\*.gml"; DestDir: "{tmp}\patches"; Flags: ignoreversion
; autosolve.ini — copie dans le dossier du jeu (ne pas ecraser si existe deja)
Source: "autosolve.ini"; DestDir: "{app}"; Flags: ignoreversion onlyifdoesntexist

[Code]
const
  GAME_EXE = 'PixelPuzzlesUltimate.exe';
  DATA_WIN = 'data.win';

// ---- Detection du chemin Steam ----

function GetSteamPath: String;
var
  Path: String;
begin
  Result := '';
  if RegQueryStringValue(HKLM, 'SOFTWARE\Wow6432Node\Valve\Steam', 'InstallPath', Path) then
    Result := Path
  else if RegQueryStringValue(HKLM, 'SOFTWARE\Valve\Steam', 'InstallPath', Path) then
    Result := Path
  else if RegQueryStringValue(HKCU, 'SOFTWARE\Valve\Steam', 'SteamPath', Path) then
  begin
    StringChangeEx(Path, '/', '\', True);
    Result := Path;
  end;
end;

function TrimStr(S: String): String;
var
  I, J: Integer;
begin
  I := 1;
  while (I <= Length(S)) and ((S[I] = ' ') or (S[I] = #9) or (S[I] = '"')) do
    I := I + 1;
  J := Length(S);
  while (J >= I) and ((S[J] = ' ') or (S[J] = #9) or (S[J] = '"')) do
    J := J - 1;
  Result := Copy(S, I, J - I + 1);
end;

function FindGameInLibraries(SteamPath: String): String;
var
  VdfPath, Line, LibPath, GameDir: String;
  Lines: TArrayOfString;
  I: Integer;
begin
  Result := '';

  // Verifier le dossier Steam par defaut
  GameDir := SteamPath + '\steamapps\common\Pixel Puzzles Ultimate';
  if FileExists(GameDir + '\' + DATA_WIN) then
  begin
    Result := GameDir;
    Exit;
  end;

  // Parser libraryfolders.vdf pour les bibliotheques additionnelles
  VdfPath := SteamPath + '\steamapps\libraryfolders.vdf';
  if not FileExists(VdfPath) then
    Exit;

  if not LoadStringsFromFile(VdfPath, Lines) then
    Exit;

  for I := 0 to GetArrayLength(Lines) - 1 do
  begin
    Line := Lines[I];
    if Pos('"path"', Line) > 0 then
    begin
      LibPath := Copy(Line, Pos('"path"', Line) + 6, Length(Line));
      LibPath := TrimStr(LibPath);
      StringChangeEx(LibPath, '\\', '\', True);

      GameDir := LibPath + '\steamapps\common\Pixel Puzzles Ultimate';
      if FileExists(GameDir + '\' + DATA_WIN) then
      begin
        Result := GameDir;
        Exit;
      end;
    end;
  end;
end;

function GetGamePath(Param: String): String;
var
  SteamPath: String;
begin
  SteamPath := GetSteamPath;
  if SteamPath <> '' then
  begin
    Result := FindGameInLibraries(SteamPath);
    if Result <> '' then
      Exit;
  end;
  Result := 'C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate';
end;

// ---- Validations ----

function IsGameRunning: Boolean;
var
  ResultCode: Integer;
begin
  Result := Exec('cmd.exe',
    '/c tasklist /FI "IMAGENAME eq ' + GAME_EXE + '" 2>NUL | find /I "' + GAME_EXE + '" >NUL',
    '', SW_HIDE, ewWaitUntilTerminated, ResultCode) and (ResultCode = 0);
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;

  if CurPageID = wpSelectDir then
  begin
    if not FileExists(ExpandConstant('{app}\' + DATA_WIN)) then
    begin
      MsgBox('Le fichier ' + DATA_WIN + ' est introuvable dans ce dossier.' + #13#10 +
             'Veuillez selectionner le dossier d''installation de Pixel Puzzles Ultimate.',
             mbError, MB_OK);
      Result := False;
      Exit;
    end;

    if IsGameRunning then
    begin
      MsgBox('Pixel Puzzles Ultimate est en cours d''execution.' + #13#10 +
             'Veuillez fermer le jeu avant de continuer.',
             mbError, MB_OK);
      Result := False;
      Exit;
    end;
  end;
end;

// ---- Patch (lance apres extraction des fichiers) ----

procedure CurStepChanged(CurStep: TSetupStep);
var
  GameDir, DataPath, UtmtExe, PatchDir, Params: String;
  ResultCode: Integer;
begin
  if CurStep <> ssPostInstall then
    Exit;

  GameDir := ExpandConstant('{app}');
  DataPath := GameDir + '\' + DATA_WIN;
  UtmtExe := ExpandConstant('{tmp}\utmt\UndertaleModCli.exe');
  PatchDir := ExpandConstant('{tmp}\patches');

  // Patch data.win en place (UTMT charge tout en memoire avant d'ecrire)
  WizardForm.StatusLabel.Caption := 'Application du patch (peut prendre quelques minutes)...';
  WizardForm.ProgressGauge.Style := npbstMarquee;

  Params := 'replace "' + DataPath + '"' +
    ' -o "' + DataPath + '"' +
    ' -c "gml_Object_ob_game_controller_Create_0=' + PatchDir + '\gml_Object_ob_game_controller_Create_0.gml"' +
    ' -c "gml_Object_ob_game_controller_Step_0=' + PatchDir + '\gml_Object_ob_game_controller_Step_0.gml"' +
    ' -c "gml_Object_ob_game_controller_Draw_64=' + PatchDir + '\gml_Object_ob_game_controller_Draw_64.gml"' +
    ' -c "gml_Object_ob_puzzles_generic_room_controller_Step_0=' + PatchDir + '\gml_Object_ob_puzzles_generic_room_controller_Step_0.gml"';

  if not Exec(UtmtExe, Params, ExpandConstant('{tmp}'), SW_HIDE, ewWaitUntilTerminated, ResultCode) then
  begin
    MsgBox('Erreur lors du lancement de UndertaleModTool.',
           mbError, MB_OK);
    Abort;
  end;

  if ResultCode <> 0 then
  begin
    MsgBox('Le patch a echoue (code de retour: ' + IntToStr(ResultCode) + ').' + #13#10 +
           'Essayez de lancer l''installeur en tant qu''administrateur.',
           mbError, MB_OK);
    Abort;
  end;
end;

// ---- Desinstallation ----

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
var
  GameDir: String;
begin
  if CurUninstallStep <> usUninstall then
    Exit;

  GameDir := ExpandConstant('{app}');

  MsgBox('Le mod a ete desinstalle.' + #13#10 +
         'Pour restaurer le jeu original, utilisez "Verifier l''integrite des fichiers du jeu" dans Steam' + #13#10 +
         '(clic droit sur le jeu > Proprietes > Fichiers locaux).',
         mbInformation, MB_OK);
end;
