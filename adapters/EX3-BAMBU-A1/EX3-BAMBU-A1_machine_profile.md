# ADAPTER MACHINE — EX3 Bambu A1
# repo    : rex-fdm-materials_clear
# path    : adapters/EX3-BAMBU-A1/EX3-BAMBU-A1_machine_profile.md
# version : 1.0.0
# firmware: Bambu Lab propriétaire (basé Klipper modifié)
# ==============================================================
# ⚠️  BAMBU : firmware fermé — pas d'accès G-code direct en impression
#     Les garde-fous process sont appliqués via Bambu Studio / OrcaSlicer
#     Pas de macros Klipper custom accessibles en cours d'impression
# ==============================================================

## Identité machine

| Paramètre         | Valeur                                    |
|-------------------|-------------------------------------------|
| ID                | EX3                                       |
| Modèle            | Bambu Lab A1                              |
| Firmware          | Bambu Lab propriétaire (Klipper modifié)  |
| Cinématique       | Cartésienne (bed slinger)                 |
| Extrudeur         | Direct drive (têtière intégrée)           |
| Probe / Leveling  | Automatique (vibration sensing)           |
| AMS               | Compatible AMS Lite                       |

## Volume utile (mm)

| Axe | Min | Max |
|-----|-----|-----|
| X   | 0   | 256 |
| Y   | 0   | 256 |
| Z   | 0   | 256 |

## Hotend

| Paramètre          | Valeur  |
|--------------------|---------|
| Diamètre buse      | 0.4 mm  |
| Diamètre filament  | 1.75 mm |
| Temp max hotend    | 300°C   |
| Temp min extrusion | 180°C   |
| Capteur temp       | Thermocouple intégré |

## Vitesses (mm/s)

| Paramètre            | Valeur |
|----------------------|--------|
| Vitesse max print    | 500    |
| Vitesse travel max   | 500    |
| Accél max            | 10000  |

## Limites process (garde-fous SLICER)

| Paramètre           | Min  | Max  |
|---------------------|------|------|
| Temp nozzle (°C)    | 180  | 290  |
| Temp bed (°C)       | 0    | 100  |
| Vitesse outer wall  | 20   | 150  |
| Flow ratio          | 0.90 | 1.10 |
| Vol flow max (mm³/s)| —    | 18.0 |

## START_PRINT — Bambu Studio (natif)

```gcode
; Bambu Studio gère le START automatiquement via profil machine
; Les variables sont injectées par le slicer
M140 S{bed_temperature_initial_layer_single}
M104 S{nozzle_temperature_initial_layer}
M190 S{bed_temperature_initial_layer_single}
M109 S{nozzle_temperature_initial_layer}
; Bed leveling automatique (vibration sensing — pas de G29)
G28
M204 S[default_acceleration]
```

## START_PRINT — OrcaSlicer (profil Bambu A1)

```gcode
M140 S{bed_temperature_initial_layer_single}
M104 S{nozzle_temperature_initial_layer}
M190 S{bed_temperature_initial_layer_single}
M109 S{nozzle_temperature_initial_layer}
G28
; Pas de G29 — leveling vibration automatique Bambu
G92 E0
```

## Notes Bambu A1

- Firmware fermé : pas d'accès SSH / Klipper direct en production
- Bed leveling par capteur vibration : automatique, pas de G29 manuel
- AMS Lite compatible : changement filament automatique possible
- Profils JSON natifs Bambu Studio exportables depuis OrcaSlicer
- Vitesses élevées natives (500mm/s) — réduire outer wall pour qualité surface
- Pas de chambre chauffée — TPU et PETG ok, ABS déconseillé
- `filament_max_volumetric_speed` à respecter dans OrcaSlicer (18 mm³/s max A1)
