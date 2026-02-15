# Pixel Puzzles Ultimate - Auto-Solve Mod

Mod pour le jeu Steam **Pixel Puzzles Ultimate** qui permet de résoudre instantanément n'importe quel puzzle avec **F9**, ou de résoudre automatiquement tous les puzzles incomplets avec **F10**.

## Installation

1. Télécharger **`PPU_AutoSolve_Setup.exe`** depuis les [Releases](../../releases)
2. Lancer l'installeur (le jeu doit être **fermé**)
3. Le dossier du jeu est détecté automatiquement — vérifier et corriger si besoin
4. Cliquer sur **Installer**

L'installeur s'occupe de tout : backup de `data.win`, application du patch, et copie de `autosolve.ini`.

### Installation manuelle

<details>
<summary>Méthode alternative sans installeur</summary>

**Prérequis :** UndertaleModTool CLI (inclus dans `utmt/`)

1. Localiser le dossier du jeu (par défaut `C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate\`)
2. Créer un backup : `cp data.win data.win.backup`
3. Appliquer le patch depuis la racine du projet :

```bash
utmt/UndertaleModCli.exe replace \
  "C:\...\Pixel Puzzles Ultimate\data.win.backup" \
  -o "C:\...\Pixel Puzzles Ultimate\data.win" \
  -c "gml_Object_ob_game_controller_Create_0=patches/gml_Object_ob_game_controller_Create_0.gml" \
  -c "gml_Object_ob_game_controller_Step_0=patches/gml_Object_ob_game_controller_Step_0.gml" \
  -c "gml_Object_ob_game_controller_Draw_64=patches/gml_Object_ob_game_controller_Draw_64.gml" \
  -c "gml_Object_ob_puzzles_generic_room_controller_Step_0=patches/gml_Object_ob_puzzles_generic_room_controller_Step_0.gml"
```

4. Copier `autosolve.ini` dans le dossier du jeu

</details>

## Réglages recommandés

- **Résolution** : 1920×1080 (l'overlay est calibré pour cette résolution GUI)
- **Mode** : **Fenêtré** — permet de garder un œil sur l'overlay pendant que le jeu tourne en arrière-plan, et évite les problèmes de focus avec F10

## Utilisation

1. Lancer le jeu via Steam (normalement)
2. Ouvrir un puzzle
3. Appuyer sur **F9** → toutes les pièces se placent instantanément
4. Le puzzle est marqué comme complété (achievement Steam, progression sauvegardée)
5. On peut re-appuyer sur **F9** sur un puzzle déjà complété pour rafraîchir les compteurs

### F10 — Auto-Solve All (résoudre tous les puzzles)

1. Appuyer sur **F10** n'importe où (menu ou puzzle) → lance le mode auto-solve
2. Un overlay en bas à gauche affiche la progression :
   - Barre de progression globale et par pack
   - Timer avant le prochain solve
   - Dernier puzzle résolu
3. **F10** à nouveau → met en **pause** / **reprend**
4. Les puzzles sont résolus un par un avec un délai réaliste (configurable, 30-60 min par défaut)
5. Timer initial configurable (5 minutes par défaut)
6. Compatible avec F9 : résoudre un puzzle manuellement met à jour la progression F10

### Dev tools (bonus)

Le mod active aussi les outils de développement cachés du jeu :
- **Touche 9** (en tenant une pièce) : snap instantané la pièce tenue
- **Touche 0 + clic gauche** : snap la pièce sous le curseur

## Ce que le mod fait

Le patch modifie 4 scripts GML dans `data.win` :

1. **`ob_game_controller_Create_0`** : active les dev tools + initialise les variables auto-solve
2. **`ob_game_controller_Step_0`** : logique F10 (queue, timer, solve, pause/resume)
3. **`ob_game_controller_Draw_64`** : overlay de progression auto-solve
4. **`ob_puzzles_generic_room_controller_Step_0`** : F9 instant-solve + sync avec F10

### F9 (instant-solve)
- Snap toutes les pièces à leur position cible
- Sauvegarde le PuzGrid (état des pièces) dans le fichier INI
- Met à jour le ClickedGrid (compteur de pièces placées affiché sur les vignettes)
- Met à jour les stats Steam (`pieces_placed`)
- Déclenche la logique de complétion du jeu (achievement, gold, etc.)

### F10 (auto-solve-all)
- Lit les données de tous les packs depuis `pidsg.ini`
- Itère les 175 packs, identifie les puzzles non complétés
- Résout chaque puzzle en écrivant les INI + achievements Steam
- Délai réaliste entre chaque solve (configurable via `autosolve.ini`)
- Met à jour les compteurs en mémoire pour les menus

## Configuration (`autosolve.ini`)

Copier `autosolve.ini` dans le dossier du jeu. Le fichier est lu à chaque appui sur F10.

| Section | Clé | Défaut | Description |
|---------|-----|--------|-------------|
| `timing` | `initial_delay_min` | `5` | Délai initial avant le premier puzzle (minutes) |
| `timing` | `min_delay_min` | `30` | Délai minimum entre deux puzzles (minutes) |
| `timing` | `max_delay_min` | `60` | Délai maximum entre deux puzzles (minutes) |
| `timing` | `variation_min` | `5` | Variation aléatoire ± sur chaque délai (minutes) |
| `overlay` | `x` | `200` | Position horizontale de l'overlay (pixels, GUI 1920×1080) |
| `overlay` | `opacity` | `0.7` | Opacité du fond (0.0–1.0) |
| `overlay` | `show` | `1` | Afficher l'overlay (1=oui, 0=non) |
| `solve` | `skip_packs` | *(vide)* | Numéros de packs à ignorer, séparés par des virgules (ex: `3,7,12`) |

## Désinstallation

- **Via Windows** : Ajout/Suppression de programmes → "PPU Auto-Solve Mod" (restaure automatiquement le backup)
- **Via Steam** : Clic droit sur le jeu → Propriétés → Fichiers locaux → Vérifier l'intégrité des fichiers
- **Manuellement** : `cp data.win.backup data.win` dans le dossier du jeu

## Structure du projet

```
puzzles/
├── README.md              # Ce fichier
├── installer.iss          # Script Inno Setup (build: iscc installer.iss)
├── autosolve.ini          # Config auto-solve (à copier dans le dossier du jeu)
├── analysis.md            # Analyse technique du jeu
├── patches/               # Fichiers GML modifiés (le mod)
│   ├── gml_Object_ob_game_controller_Create_0.gml
│   ├── gml_Object_ob_game_controller_Step_0.gml
│   ├── gml_Object_ob_game_controller_Draw_64.gml
│   └── gml_Object_ob_puzzles_generic_room_controller_Step_0.gml
├── utmt/                  # UndertaleModTool CLI (patcher GameMaker)
├── gml_dump/              # Dump complet du code GML du jeu (392 fichiers)
└── python_legacy/         # Anciens scripts Python (solveur par vision, non maintenu)
    ├── puzzle_solver.py   # Moteur principal (~1100 lignes, OpenCV)
    ├── run_solver.py      # Lanceur CLI
    ├── script1.ahk        # Ancien script AutoHotkey
    ├── memory_reader.py   # POC lecture mémoire avec pymem
    ├── dump_gamedata.py   # Parser du format data.win (IFF/FORM)
    ├── decompile_gml.py   # Désassembleur GML (expérimental)
    ├── requirements.txt   # Dépendances Python (pymem, opencv, etc.)
    └── TECHSTACK.md       # Bilan technique de l'approche Python
```

## Notes techniques

- Le jeu utilise **GameMaker Studio** (pas Unity)
- Le fichier `data.win` contient tout le code, sprites et données du jeu au format IFF/FORM
- Les positions des pièces sont hardcodées par puzzle dans `Alarm_3`
- Voir `analysis.md` pour l'analyse complète de la logique du jeu
