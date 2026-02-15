# Pixel Puzzles Ultimate - Auto-Solve Mod

## Projet
Mod GML pour le jeu Steam "Pixel Puzzles Ultimate" qui résout automatiquement les puzzles.
Approche : patch du fichier `data.win` (GameMaker Studio) via UndertaleModTool CLI.

## Architecture
- `patches/` — 4 fichiers GML qui constituent le mod
  - `gml_Object_ob_game_controller_Create_0.gml` — init variables + dev tools
  - `gml_Object_ob_game_controller_Step_0.gml` — logique F10 auto-solve + F11 stop
  - `gml_Object_ob_game_controller_Draw_64.gml` — overlay de progression
  - `gml_Object_ob_puzzles_generic_room_controller_Step_0.gml` — F9 instant-solve + sync F10
- `autosolve.ini` — configuration des timings et overlay (copié dans le dossier du jeu)
- `utmt/` — UndertaleModTool CLI (patcher GameMaker)
- `gml_dump/` — dump complet du code GML du jeu (392 fichiers, référence)
- `analysis.md` — analyse technique de la logique du jeu
- `python_legacy/` — ancien solveur par vision OpenCV (non maintenu)

## Stack technique
- **GameMaker Language (GML)** — langage du jeu, patches injectés dans `data.win`
- **UndertaleModTool CLI** — outil de patching des fichiers GameMaker
- **Steam API** — achievements, stats, DLC ownership (`steam_set_achievement`, `steam_user_owns_dlc`, etc.)
- **INI files** — sauvegardes du jeu (`pidsg.ini`, `p{N}.ini`, `settings.ini`) + config mod (`autosolve.ini`)

## Conventions
- Langue du code GML : anglais
- Langue des commentaires/docs utilisateur : français
- Variables globales auto-solve préfixées `global.as_`
- Config variables préfixées `global.as_cfg_`

## Commandes utiles
```bash
# Appliquer le patch (depuis la racine du projet)
utmt/UndertaleModCli.exe replace \
  "C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate\data.win.backup" \
  -o "C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate\data.win" \
  -c "gml_Object_ob_game_controller_Create_0=patches/gml_Object_ob_game_controller_Create_0.gml" \
  -c "gml_Object_ob_game_controller_Step_0=patches/gml_Object_ob_game_controller_Step_0.gml" \
  -c "gml_Object_ob_game_controller_Draw_64=patches/gml_Object_ob_game_controller_Draw_64.gml" \
  -c "gml_Object_ob_puzzles_generic_room_controller_Step_0=patches/gml_Object_ob_puzzles_generic_room_controller_Step_0.gml"

# Copier la config dans le dossier du jeu
cp autosolve.ini "C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate\"
```

## Touches
- **F9** (dans un puzzle) — résolution instantanée du puzzle ouvert
- **F10** (partout) — démarrer/pause/reprendre l'auto-solve de tous les puzzles
- **F11** (partout) — arrêter complètement l'auto-solve

## Notes techniques
- Le jeu utilise **GameMaker Studio** (pas Unity)
- `data.win` contient tout le code, sprites et données au format IFF/FORM
- `ob_game_controller` est un objet persistant (présent dans toutes les rooms)
- PI_G grid dans `pidsg.ini` : col 0=DLC appID, col 1=nom, col 2=nb puzzles, cols 11+=nb pièces par puzzle
- Ownership check via `steam_user_owns_dlc()` pour filtrer les packs non possédés
- Positions des pièces hardcodées par puzzle dans `Alarm_3`
