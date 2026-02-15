# Analyse - Pixel Puzzles Ultimate (GameMaker)

## Moteur
**GameMaker Studio** (PAS Unity comme supposé initialement)
- Exe 32-bit (PE32), tourne en WoW64 sur Windows 64-bit
- Fichier principal : `data.win` (40 Mo, format IFF/FORM)
- Runner GameMaker intégré dans l'exe

## Structure du jeu (extraite du data.win)

### Objets clés (79 objets total)
| Index | Nom | Rôle |
|-------|-----|------|
| 0 | `ob_game_controller` | Contrôleur principal |
| 23 | `ob_puzzles_generic_room_controller` | Contrôleur de la room puzzle |
| 24 | `ob_puzzle_pieces_actual` | **Les pièces de puzzle** |
| 25 | `ob_tray` | Le plateau/bac de pièces |
| 26 | `ob_ref_image` | Image de référence |

### États des pièces (`CurrentState`)
| État | Description |
|------|-------------|
| 0 | Flottant dans la "mare" (pool) |
| 1 | Posée sur le plateau (non snappée) |
| 2 | En cours de drag (suit le curseur) |
| **3** | **Snappée/placée correctement** |
| 4 | Dans le tray (bac à pièces) |
| 7 | Animation d'intro |
| 8 | État spécial (chargement depuis save) |
| 100 | État initial avant animation |

### Variables critiques pour le placement
| Variable | Rôle |
|----------|------|
| `socket_x_location` | **Position X cible de la pièce** (définie à la création) |
| `socket_y_location` | **Position Y cible de la pièce** (définie à la création) |
| `CurrentState` | État courant de la pièce |
| `image_angle` | Rotation (doit être 0 pour snapper) |
| `puzzle_piece_number` | Numéro de la pièce (1-based) |
| `global.piece_snap` | Distance de tolérance pour le snap |
| `global.total_number_of_pieces` | Compteur de pièces restantes |
| `global.dev_tools_are_active` | Active les outils dev (touches 9/0) |

### Logique de snap (Step_0, ligne 396)
Quand on lâche une pièce en `CurrentState == 2` :
```
si image_angle == 0
   ET point dans rectangle(socket_x ± piece_snap, socket_y ± piece_snap)
   → CurrentState = 3, x = socket_x, y = socket_y (SNAP!)
```

### Dev tools intégrés
Le jeu a des outils de développement cachés (`global.dev_tools_are_active`) :
- **Touche 9** (en tenant une pièce) : snap instantané la pièce tenue
- **Touche 0 + clic gauche** : snap la pièce sous le curseur

### Positions hardcodées (Alarm_3)
Les positions de chaque pièce sont **hardcodées par puzzle** dans `Alarm_3`.
Chaque puzzle a ses `Px_N`/`Py_N` (positions pixel exactes) + un `xUseMinus` d'ajustement.

### Système de sauvegarde
Le jeu utilise deux grilles de données dans les fichiers INI :

1. **PuzGrid** (`p{pack}.ini`, section `P{puzzle}`, clé `"0"`) :
   - Grille 4 colonnes × (max_pieces+1) lignes
   - Colonne 0 : état de la pièce (0=non placée, 1=placée)
   - Colonne 1 : angle de rotation (0, 90, 180, 270)

2. **ClickedGrid** (même INI, section `"PC"`, clé `"0"`) :
   - Grille 1 colonne × 500 lignes
   - `ClickedGrid[0, puzzle_number]` = nombre de pièces placées (affiché sur les vignettes du menu)

3. **Steam achievements** :
   - `complete_pack_{pack}_puzzle_{puzzle}` : puzzle individuel complété
   - `complete_pack_{pack}` : pack entier complété (vérifié au retour au menu)
   - Stats : `pieces_placed`, `total_normal_puzzles_beat`, `total_packs_complete`
