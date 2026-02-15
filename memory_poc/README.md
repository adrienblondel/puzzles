# Pixel Puzzles Ultimate - Auto-Solve Mod

Mod pour le jeu Steam **Pixel Puzzles Ultimate** qui permet de résoudre instantanément n'importe quel puzzle avec la touche **F9**.

## Prérequis

- **Pixel Puzzles Ultimate** installé via Steam
- **UndertaleModTool CLI** (inclus dans `utmt/`)
- Le jeu doit être **fermé** pendant l'installation du mod

## Installation

### 1. Localiser le dossier du jeu

Par défaut :
```
C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate\
```

### 2. Créer un backup

```bash
cd "C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate"
cp data.win data.win.backup
```

### 3. Appliquer le patch

Depuis la racine du projet (`memory_poc/`) :

```bash
utmt/UndertaleModCli.exe replace \
  "C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate\data.win.backup" \
  -o "C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate\data.win" \
  -c "gml_Object_ob_game_controller_Create_0=patches/gml_Object_ob_game_controller_Create_0.gml" \
  -c "gml_Object_ob_puzzles_generic_room_controller_Step_0=patches/gml_Object_ob_puzzles_generic_room_controller_Step_0.gml"
```

## Utilisation

1. Lancer le jeu via Steam (normalement)
2. Ouvrir un puzzle
3. Appuyer sur **F9** → toutes les pièces se placent instantanément
4. Le puzzle est marqué comme complété (achievement Steam, progression sauvegardée)
5. On peut re-appuyer sur **F9** sur un puzzle déjà complété pour rafraîchir les compteurs

### Dev tools (bonus)

Le mod active aussi les outils de développement cachés du jeu :
- **Touche 9** (en tenant une pièce) : snap instantané la pièce tenue
- **Touche 0 + clic gauche** : snap la pièce sous le curseur

## Ce que le mod fait

Le patch modifie deux scripts GML dans `data.win` :

1. **`ob_game_controller_Create_0`** : active les dev tools (`global.dev_tools_are_active = 1`)
2. **`ob_puzzles_generic_room_controller_Step_0`** : injecte le code auto-solve sur F9

Quand F9 est pressé, le code :
- Snap toutes les pièces à leur position cible
- Sauvegarde le PuzGrid (état des pièces) dans le fichier INI
- Met à jour le ClickedGrid (compteur de pièces placées affiché sur les vignettes)
- Met à jour les stats Steam (`pieces_placed`)
- Déclenche la logique de complétion du jeu (achievement, gold, etc.)

## Désinstallation

Restaurer le backup :

```bash
cd "C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate"
cp data.win.backup data.win
```

Ou vérifier l'intégrité des fichiers via Steam :
**Clic droit sur le jeu → Propriétés → Fichiers locaux → Vérifier l'intégrité des fichiers**

## Structure du projet

```
memory_poc/
├── README.md              # Ce fichier
├── analysis.md            # Analyse technique du jeu
├── patches/               # Fichiers GML modifiés
│   ├── gml_Object_ob_game_controller_Create_0.gml
│   └── gml_Object_ob_puzzles_generic_room_controller_Step_0.gml
├── utmt/                  # UndertaleModTool CLI (patcher GameMaker)
├── gml_dump/              # Dump complet du code GML du jeu (392 fichiers)
├── dump_gamedata.py       # Parser du format data.win (IFF/FORM)
├── memory_reader.py       # POC lecture mémoire avec pymem
├── decompile_gml.py       # Désassembleur GML (expérimental)
└── requirements.txt       # Dépendances Python (pymem)
```

## Notes techniques

- Le jeu utilise **GameMaker Studio** (pas Unity)
- Le fichier `data.win` contient tout le code, sprites et données du jeu au format IFF/FORM
- Les positions des pièces sont hardcodées par puzzle dans `Alarm_3`
- Voir `analysis.md` pour l'analyse complète de la logique du jeu
