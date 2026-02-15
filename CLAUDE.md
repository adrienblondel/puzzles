# Pixel Puzzles Ultimate - Auto Solver

## Projet
Solveur automatique pour le jeu Steam "Pixel Puzzles Ultimate" (jeu de puzzle/jigsaw).
Automatisation desktop par vision (pas du web scraping).

## Architecture
- `puzzle_solver.py` — moteur principal (classe `PuzzleSolver`, ~1100 lignes)
- `run_solver.py` — lanceur CLI avec parsing d'arguments
- `script1.ahk` — ancien script AutoHotkey (legacy, non maintenu)
- `requirements.txt` — dépendances Python

## Stack technique
- **Python 3** avec OpenCV, numpy, mss, pyautogui, pydirectinput
- **pytesseract** (optionnel) pour OCR du compteur de pièces
- Voir `TECHSTACK.md` pour le bilan complet

## Fonctionnement
1. Détecte la fenêtre du jeu (pygetwindow + Win32 API)
2. Capture l'écran (mss) et analyse par vision (OpenCV HSV + contours)
3. Localise le plateau et les pièces dans la bordure
4. Drag & drop systématique de chaque pièce sur chaque case de la grille
5. Vérifie le placement par comparaison de pixels

## Conventions
- Langue du code : anglais
- Langue des commentaires/docs utilisateur : français
- Les tailles de grille connues sont dans le dict `PUZZLE_GRIDS`
- Le mode debug (`--debug`) sauvegarde les screenshots dans `./debug/`

## Commandes utiles
```bash
pip install -r requirements.txt
python run_solver.py                # Mode interactif
python run_solver.py --pieces 330   # Taille connue
python run_solver.py --debug        # Screenshots de debug
```

## Dépendances externes
- Tesseract OCR doit être dans le PATH pour l'OCR (`C:\Program Files\Tesseract-OCR`)
