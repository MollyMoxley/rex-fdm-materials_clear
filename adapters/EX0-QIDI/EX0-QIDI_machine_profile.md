# ADAPTER MACHINE — EX0 Qidi X-Max 3
# repo    : rex-fdm-materials_clear
# path    : adapters/EX0-QIDI/EX0-QIDI_machine_profile.md
# doc     : v1.0.0 — generee depuis printer.cfg V9.0 (20/03/2026)
# firmware: Klipper V4.3.15

---

> ⚠️ **ALERTE VERSIONNING** — document généré depuis `printer.cfg` **V9 en cours d'itération**.
> Le code source peut contenir des erreurs non encore corrigées.
> **Vérifier les champs marqués `[A VERIFIER]` avant tout usage en production.**

> ⚠️ **Champs à vérifier impérativement** : `z_offset` · PID buse · mesh min/max · `pressure_advance` · `rotation_distance` extrudeur · `position_max` axes

---

## Identité machine

| Paramètre       | Valeur                              | Statut         |
|-----------------|-------------------------------------|----------------|
| ID              | EX0                                 | —              |
| Modèle          | Qidi X-Max 3                        | —              |
| Cinématique     | CoreXY                              | —              |
| Carte mère      | MKS SKIPR (STM32F407) + MKS_THR (RP2040) | —         |
| Firmware        | Klipper V4.3.15                     | A VERIFIER     |
| printer.cfg     | V9.0 — 20/03/2026                   | VERSION ACTIVE |

## Volume utile (mm)

| Axe | Min | Max | Statut           |
|-----|-----|-----|------------------|
| X   | -7  | 315 | V9 valide        |
| Y   | 0   | 315 | V9 valide        |
| Z   | 0   | 315 | V9 valide        |
| Bambu Studio | — | 310x310 | INFO-1 V9 — évite Y out-of-range |

## Hotend

| Paramètre          | Valeur                      | Statut                       |
|--------------------|-----------------------------|------------------------------|
| Diamètre buse      | 0.4 mm                      | —                            |
| Diamètre filament  | 1.75 mm                     | —                            |
| Capteur temp       | MAX6675 (thermocouple SPI)  | —                            |
| Temp max hotend    | 360°C (buse acier trempé)   | —                            |
| Temp min extrusion | 170°C                       | —                            |
| PID Kp/Ki/Kd       | 14.734 / 6.549 / 8.288      | **[A VERIFIER]** post PID_CALIBRATE |

## Extrudeur

| Paramètre          | Valeur              | Statut                          |
|--------------------|---------------------|---------------------------------|
| Type               | Direct drive haute réduction | —                      |
| Gear ratio         | 1628:170 (~9.58:1)  | —                               |
| rotation_distance  | 53.5                | **[A VERIFIER]** calibré mesure |
| pressure_advance   | 0.032 s             | **[A VERIFIER]** post-calibration |
| PA smooth_time     | 0.03 s              | —                               |
| run_current TMC    | 0.714 A RMS         | —                               |

## Cinématique globale

| Paramètre              | Valeur       | Statut                          |
|------------------------|--------------|---------------------------------|
| max_velocity           | 600 mm/s     | —                               |
| max_accel              | 20000 mm/s²  | Nécessite IS calibré (ADXL345)  |
| max_z_accel            | 800 mm/s²    | [GAIN-1] V6 valide              |
| square_corner_velocity | 12 mm/s      | [GAIN-4] post-IS valide         |

## Bed Mesh + Probe

| Paramètre    | Valeur              | Statut                              |
|--------------|---------------------|-------------------------------------|
| mesh_min     | X=58.0 / Y=35.0     | SAVE_CONFIG 11/03/2026              |
| mesh_max     | X=285.0 / Y=300.0   | SAVE_CONFIG 11/03/2026              |
| Points       | 9x9 = 81 pts        | —                                   |
| z_offset     | 1.124               | **[A VERIFIER]** si plateau déplacé |
| Probe center | X=129.5 / Y=153.1   | M4029                               |

## Limites process — Garde-fous machine

| Paramètre          | Min | Max              |
|--------------------|-----|------------------|
| Temp nozzle (°C)   | 170 | 360              |
| Temp bed (°C)      | 0   | 120              |
| Temp chambre (°C)  | 0   | 60               |
| Vitesse print mm/s | —   | 300 (conservatif)|

## START_PRINT — OrcaSlicer / Bambu Studio

```gcode
GUARDS_CHECK_PETG TEMP={nozzle_temperature_initial_layer} SPEED={outer_wall_speed} FLOW={filament_flow_ratio} MACHINE=EX0
M140 S{bed_temperature_initial_layer_single}
M104 S{nozzle_temperature_initial_layer}
M190 S{bed_temperature_initial_layer_single}
M109 S{nozzle_temperature_initial_layer}
G28
BED_MESH_PROFILE LOAD=default
G92 E0
```

## Notes V9 — points actifs

- `[CLEAN-1]` BUG-4 obsolète supprimé — mesh correctement calibré mesh_max X=285.
- `[CLEAN-2]` z_offset 1.124 validé 11/03/2026 — **à re-vérifier si plateau déplacé**.
- `[INFO-1]` Bambu Studio : limiter plateau à 310×310 pour éviter Y out-of-range Y=315.
- `max_accel 20000` nécessite input shaping calibré (ADXL345) — réduire à 5000-8000 sans IS.
- Chambre chauffée présente (M141) — ABS utilise `PREHEAT_ABS` (chauffe parallèle).
- KAMP actif (`Adaptive_Mesh.cfg`) — mesh adaptatif sur zone imprimée uniquement.

---

*rex-fdm-materials_clear · adapters/EX0-QIDI/ · doc v1.0.0 · source printer.cfg V9.0 · 20/03/2026*
