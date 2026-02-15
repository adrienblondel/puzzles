# Pixel Puzzles Ultimate - Auto-Solve Mod

Mod pour le jeu Steam **Pixel Puzzles Ultimate** qui résout automatiquement les puzzles. **F10** gère tout : puzzle simple ou pack entier.

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

### Touches

| Touche | Contexte | Action |
|--------|----------|--------|
| **F10** | Dans un puzzle | Lance l'auto-solve du puzzle en cours |
| **F10** | Sur la page d'un pack | Lance l'auto-solve de tous les puzzles incomplets du pack |
| **F10** | Pendant l'auto-solve | Met en **pause** / **reprend** |
| **F10** | Auto-solve terminé | Ferme l'overlay |
| **F8** | À tout moment | **Arrête** l'auto-solve / ferme l'overlay |

### Puzzle simple

1. Ouvrir un puzzle
2. Appuyer sur **F10** → les pièces se placent une par une (avec le son original)
3. L'overlay en bas à gauche affiche la progression (pièces placées / total)
4. Une fois terminé, l'overlay reste ouvert avec "PUZZLE COMPLETE"
5. **F10** ou **F8** pour fermer

### Pack entier

1. Ouvrir la page d'un pack (là où on voit les vignettes des puzzles)
2. Appuyer sur **F10** → le mod entre dans chaque puzzle incomplet et le résout
3. L'overlay affiche :
   - Barre de progression du pack (puzzles résolus / total)
   - Barre de progression du puzzle en cours (pièces placées / total)
   - Dernier puzzle résolu
   - Timers (prochain puzzle, retour au pack)
4. **F10** pour pause/reprise, **F8** pour arrêter
5. Si le pack est déjà complet, un flash "PACK COMPLETE" s'affiche brièvement

### Délais

- **3 secondes** à l'entrée d'un puzzle (temps de l'animation in-game)
- **Délai entre chaque pièce** configurable via `step_delay` dans `autosolve.ini`
- **Délai entre puzzles** et **délai de sortie** configurables

### Dev tools (bonus)

Le mod active aussi les outils de développement cachés du jeu :
- **Touche 9** (en tenant une pièce) : snap instantané la pièce tenue
- **Touche 0 + clic gauche** : snap la pièce sous le curseur

## Configuration (`autosolve.ini`)

Copier `autosolve.ini` dans le dossier du jeu. Le fichier est relu à chaque appui sur F10.

| Section | Clé | Défaut | Description |
|---------|-----|--------|-------------|
| `dev` | `step_delay` | `1` | Délai entre chaque pièce posée (en secondes). Ex: `0.1` = très rapide |
| `pack_solve` | `exit_delay_sec` | `3` | Délai après complétion d'un puzzle avant retour au pack (secondes) |
| `pack_solve` | `between_puzzles_sec` | `2` | Délai sur la page du pack avant d'entrer dans le puzzle suivant (secondes) |
| `overlay` | `opacity` | `0.7` | Opacité du fond de l'overlay (0.0–1.0) |
| `overlay` | `show` | `1` | Afficher l'overlay (1=oui, 0=non). Le solve continue même si masqué |

## Ce que le mod fait

Le patch modifie 4 scripts GML dans `data.win` :

1. **`ob_game_controller_Create_0`** : active les dev tools + initialise les variables auto-solve
2. **`ob_game_controller_Step_0`** : logique F10/F8 (single puzzle, pack, pause/resume, config)
3. **`ob_game_controller_Draw_64`** : overlay de progression unifié (single, pack, completed)
4. **`ob_puzzles_generic_room_controller_Step_0`** : placement des pièces une par une (contrôlé par F10)

### Détection des puzzles incomplets

Le mod vérifie l'état de chaque puzzle en lisant le comptage de pièces dans les fichiers INI de sauvegarde (`p{pack}.ini`), et non les achievements Steam. Cela évite les faux positifs quand un achievement est resté actif après un reset de progression.

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
```

## Notes techniques

- Le jeu utilise **GameMaker Studio** (pas Unity)
- Le fichier `data.win` contient tout le code, sprites et données du jeu au format IFF/FORM
- Les positions des pièces sont hardcodées par puzzle dans `Alarm_3`
- `ob_game_controller` est un objet **persistant** (présent dans toutes les rooms)
- `ob_puzzles_generic_room_controller` n'existe que dans la room `r_puzzle_room`
- Les noms de ressources non référencés dans le code original doivent utiliser `asset_get_index()` (limitation UTMT)
- Voir `analysis.md` pour l'analyse complète de la logique du jeu
