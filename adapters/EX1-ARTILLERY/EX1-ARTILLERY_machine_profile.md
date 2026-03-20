# ADAPTER MACHINE — EX1 Artillery Sidewinder X2
# repo    : rex-fdm-materials_clear
# path    : adapters/EX1-ARTILLERY/EX1-ARTILLERY_machine_profile.md
# version : 1.0.0
# firmware: Ethereal 3D (base Marlin 2.x) — PAS Klipper
# ==============================================================
# ⚠️  MARLIN : pas de gcode_macro, pas de GUARDS_CHECK firmware
#     Les garde-fous process sont appliqués côté SLICER uniquement
#     (PrusaSlicer / OrcaSlicer start G-code)
# ==============================================================

## Identité machine

| Paramètre         | Valeur                          |
|-------------------|---------------------------------|
| ID                | EX1                             |
| Modèle            | Artillery Sidewinder X2         |
| Firmware          | Ethereal 3D (Marlin 2.x maison) |
| Cinématique       | Cartésienne (bed slinger)       |
| Extrudeur         | Direct drive                    |
| Probe             | LJ12A3-4-Z/BX (inductif)        |
| Ancien probe      | BLTouch (remplacé)              |

## Volume utile

| Axe | Min | Max  |
|-----|-----|------|
| X   | 0   | 300  |
| Y   | 0   | 300  |
| Z   | 0   | 400  |

## Hotend

| Paramètre          | Valeur  |
|--------------------|---------|
| Diamètre buse      | 0.4 mm  |
| Diamètre filament  | 1.75 mm |
| Temp max hotend    | 300°C   |
| Temp min extrusion | 180°C   |

## Vitesses (mm/s)

| Paramètre          | Valeur  |
|--------------------|---------|
| Vitesse max print  | 150     |
| Vitesse travel max | 200     |
| Vitesse Z max      | 20      |

## Limites process (garde-fous SLICER)

| Paramètre           | Min  | Max  |
|---------------------|------|------|
| Temp nozzle         | 180  | 290  |
| Temp bed            | 0    | 110  |
| Vitesse outer wall  | 20   | 80   |
| Flow ratio          | 0.90 | 1.10 |

## START_PRINT — OrcaSlicer / Bambu Studio

```gcode
; Garde-fous process EX1 — injectés par le slicer (Marlin, pas Klipper)
; ⚠️ Pas de GUARDS_CHECK firmware — vérification manuelle profil avant lancement
M140 S{bed_temperature_initial_layer_single}   ; chauffe plateau non-bloquant
M104 S{nozzle_temperature_initial_layer}       ; chauffe buse non-bloquant
M190 S{bed_temperature_initial_layer_single}   ; attend plateau
M109 S{nozzle_temperature_initial_layer}       ; attend buse
G28                                             ; home all
G29                                             ; bed leveling (inductif LJ12A3)
G92 E0
```

## START_PRINT — PrusaSlicer / Slic3r

```gcode
M140 S[first_layer_bed_temperature]
M104 S[first_layer_temperature]
M190 S[first_layer_bed_temperature]
M109 S[first_layer_temperature]
G28
G29
G92 E0
```

## Notes Ethereal 3D

- Firmware maison basé Marlin 2.x — commandes G-code standard Marlin valides
- Probe LJ12A3-4-Z/BX inductif : `G29` déclenche le bed leveling
- Pas de macros Klipper — tout le process logic est dans le slicer
- Pas de chambre chauffée
- Input shaping : non disponible natif Marlin (pas ADXL345)
