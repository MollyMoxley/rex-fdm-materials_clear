# ADAPTATEUR — PETG-CLEAR-OVERTURE → EX1 Artillery Sidewinder X2
# Firmware : Marlin (Ethereal3D)
# Architecture : Bowden long (~400 mm)
# Matière source : materials/PETG-CLEAR-OVERTURE.mat
# Version : 1.0 — 2026-03-20

## Delta vs source

| Paramètre | Source .mat | EX1 appliqué | Raison |
|---|---|---|---|
| Rétraction | 0.8 mm DD | 4.5 mm | Bowden long |
| Rétraction speed | 30 mm/s | 40 mm/s | Bowden long |
| Volumetric 0.4 | 12 mm³/s | 8 mm³/s | Limitation Bowden PETG |
| Bed | 80°C | 75°C | Plateau verre EX1 |
| Nozzle | 255°C | 250°C | Bowden = moins de pression |
| Z-hop | 0.4 mm | 0.2 mm | Marlin limitation |

## Macro Klipper / Marlin start GCODE

```gcode
; PETG Clear Overture — EX1 Artillery Sidewinder X2
; Ethereal3D Marlin
M104 S250         ; nozzle preheat
M140 S75          ; bed preheat
M109 S250         ; wait nozzle
M190 S75          ; wait bed
G28               ; home all
M420 S1           ; ABL load mesh
G92 E0
G1 Z5 F3000
G1 X5 Y5 F6000
; purge line
G1 Z0.3
G92 E0
G1 X100 E15 F800
G92 E0
G1 Z2 F3000
```

## Points d'attention Bowden PETG

- Stringing élevé sur PETG en Bowden — commencer à 4.5 mm puis ajuster
- Température légèrement réduite (250 vs 255°C) pour limiter ooze
- Activer "avoid crossing perimeters" dans Orca
- Wipe distance : 2 mm minimum

## Statut

| Paramètre | Statut |
|---|---|
| Profil Orca | 🔴 À créer |
| Start GCODE | 🟡 Ébauche |
| Tests validés | 🔴 Aucun |
