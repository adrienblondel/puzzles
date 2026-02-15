# Bilan technologique - Pixel Puzzles Ultimate Solver

## Stack actuel (Python + vision)

| Couche | Librairie | Rôle |
|--------|-----------|------|
| Capture écran | **mss** | Screenshots rapides |
| Vision | **OpenCV** + **numpy** | Détection par couleur HSV, contours, morphologie |
| Souris/clavier | **pyautogui** + **pydirectinput** | Clics, drag & drop |
| OCR (optionnel) | **pytesseract** | Lecture du compteur de pièces |
| Fenêtre | **pygetwindow** + ctypes Win32 | Localisation de la fenêtre du jeu |

**Approche** : automatisation par analyse d'image — capture d'écran, détection des pièces
par couleur/contours, placement par essai systématique sur la grille.

## Ancien script (AutoHotkey)

`script1.ahk` (408 lignes) — macro bas niveau avec clics/mouvements directs, sans vision
par ordinateur. Plus fragile, dépendant de positions fixes.

## Alternatives évaluées

| Option | Pertinent ? | Raison |
|--------|-------------|--------|
| **Playwright / Selenium** | Non | Outils web, le jeu est une app desktop Steam |
| **SikuliX** | Possible | Reconnaissance d'image native, mais JVM, plus lent, moins maintenu |
| **pywinauto** | Partiel | Utile pour la gestion de fenêtre, inutile pour le canvas graphique du jeu |
| **Cheat Engine / Memory** | Possible | Lecture directe en mémoire, mais complexe et fragile entre versions |
| **Modding Unity** (BepInEx) | Possible | Accès direct au code du jeu, 100% fiable mais reverse engineering lourd |

## Verdict

Le stack actuel **OpenCV + pyautogui + mss** est le bon choix pour ce cas d'usage.
C'est la combinaison standard pour l'automatisation de jeux desktop par vision.

### Améliorations possibles

- **Template matching** (OpenCV `matchTemplate`) au lieu du seul seuillage couleur — plus robuste
- **pywinauto** uniquement pour la gestion de fenêtre (au lieu de ctypes brut)
- **Petit modèle ML** pour la reconnaissance de pièces si les puzzles deviennent complexes
