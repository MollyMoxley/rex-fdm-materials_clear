# ADAPTATEUR — PETG-CLEAR-OVERTURE → EX0 Qidi X-Max 3
# Firmware : Klipper (Qidi natif)
# Extrudeur : Direct Drive natif Qidi
# Sonde ABL : LJ12A3-4-Z/BX inductif
# Plateau   : 310 x 310 x 315 mm
# Matière source : materials/PETG-CLEAR-OVERTURE.mat
# Version : 1.1 — 2026-03-20

## Delta vs source de vérité

| Paramètre | Source .mat | EX0 appliqué | Raison |
|---|---|---|---|
| Rétraction | 0.8 mm DD | 1.0 mm | DD Qidi légèrement plus long |
| Rétraction speed | 30 mm/s | 35 mm/s | Adapté extrudeur Qidi |
| Volumetric 0.4 | 12 mm³/s | 10 mm³/s | Conservatif premier test |
| Bed | 80°C | 80°C | Conforme |
| Nozzle | 255°C | 255°C | Conforme |
| Z-hop | 0.4 mm | 0.4 mm | Conforme |

## Profil slicer

| Fichier | Slicer | Statut |
|---|---|---|
| `profiles/PETG/Overture PETG @Qidi X-Max 3 0.4 nozzle.json` | Orca (Qidi) | 🟡 ESSAI |

## Macro Klipper

| Fichier | Statut |
|---|---|
| `macros/PETG/PETG-CLEAR_EX0-QIDI_start-end.cfg` | 🟡 ESSAI |

## Spécificités plateau 310×310×315

- Zone d'impression utile : 305×305 (marges sonde inductif)
- Purge line : X=5, Y=5→280
- ABL : G29 live mesh via LJ12A3

## Nom profil Orca/Qidi Slicer

```
ESSAI @ EX0 - PETG CLEAR - 0.20mm 0.4mm
```

## Statut tests

| Date | Résultat | Notes |
|---|---|---|
| — | 🔴 Non lancé | — |
