# ADAPTATEUR — PETG-CLEAR-OVERTURE → EX0 Qidi X-Max 3
# Firmware : Klipper (via Qidi)
# Matière source : materials/PETG-CLEAR-OVERTURE.mat
# Version : 1.0 — 2026-03-20

## Delta vs source

| Paramètre | Source .mat | EX0 appliqué | Raison |
|---|---|---|---|
| Rétraction | 0.8 mm DD | 1.0 mm | Bowden court Qidi |
| Volumetric 0.4 | 12 mm³/s | 10 mm³/s | Limité extrudeur Qidi |
| Bed | 80°C | 80°C | Conforme |
| Nozzle | 255°C | 255°C | Conforme |

## Macro Klipper (Orca → EX0)

Profil Orca à créer : `ESSAI @ EX0 - PETG CLEAR - 0.20mm 0.4mm`

Paramètres start GCODE spécifiques EX0 :
```
; PETG Clear Overture — EX0 Qidi X-Max 3
M104 S255         ; nozzle temp
M140 S80          ; bed temp
M109 S255         ; wait nozzle
M190 S80          ; wait bed
G28               ; home all
G29               ; bed leveling ABL
G92 E0
G1 Z5 F3000
```

## Statut

| Paramètre | Statut |
|---|---|
| Profil Orca | 🔴 À créer |
| Macro start GCODE | 🟡 Ébauche |
| Tests validés | 🔴 Aucun |
