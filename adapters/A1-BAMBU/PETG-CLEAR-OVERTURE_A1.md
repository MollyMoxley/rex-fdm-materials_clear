# ADAPTATEUR — PETG-CLEAR-OVERTURE → Bambu Lab A1
# Format : JSON Bambu Studio / Orca Slicer
# Matière source : materials/PETG-CLEAR-OVERTURE.mat
# Version : 1.0 — 2026-03-20

## Dérivé depuis source de vérité

Tous les paramètres ci-dessous sont dérivés de `PETG-CLEAR-OVERTURE.mat`.
Ne pas modifier directement — modifier la source `.mat` puis régénérer.

## Fichiers générés

| Fichier | Buse | Statut |
|---|---|---|
| `Overture PETG @BBL A1 0.4 nozzle.json` | 0.4 mm | 🟡 ESSAI |
| `Overture PETG @BBL A1 0.6 nozzle.json` | 0.6 mm | 🟡 ESSAI |

## Spécificités A1 (système fermé Bambu)

- Rétraction : Direct Drive → 0.8 mm @ 30 mm/s
- Format profil : JSON héritage `Generic PETG @BBL A1`
- Déploiement : `%APPDATA%\BambuStudio\user\[ID]\filament\`
- Copie Orca : `%APPDATA%\OrcaSlicer\user\[ID]\filament\`

## Delta vs source

| Paramètre | Source .mat | A1 appliqué | Raison |
|---|---|---|---|
| Rétraction | 0.8 mm DD | 0.8 mm | Direct Drive natif |
| Volumetric 0.4 | 12 mm³/s | 12 mm³/s | Conforme |
| Volumetric 0.6 | 18 mm³/s | 18 mm³/s | Conforme |
| Bed | 80°C | 80°C | PEI texturé A1 |
