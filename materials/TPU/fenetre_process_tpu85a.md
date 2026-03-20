# Fenêtre Process — TPU 85A
**repo** : rex-fdm-materials_clear · **path** : materials/TPU/ · **v1.0.0**
**statut** : ✅ VALIDÉ — REX IT-8 lot qualifié

---

## Températures

| Paramètre     | Nominal | Min | Max |
|---------------|---------|-----|-----|
| Temp nozzle   | 229°C   | 215 | 240 |
| Temp bed      | 45°C    | 35  | 55  |

## Vitesses

| Paramètre    | Nominal  |
|--------------|----------|
| Outer wall   | 35 mm/s  |
| Inner wall   | 50 mm/s  |
| Infill       | 60 mm/s  |
| Travel       | 120 mm/s |

## Flow / Extrusion

| Paramètre        | Valeur        |
|------------------|---------------|
| flow_ratio       | 1.02          |
| vol_flow_max     | 1.42 mm³/s    |
| retract_length   | 0.8 mm        |
| retract_speed    | 25 mm/s       |

## Ventilation + Comportement

| Paramètre          | Valeur              |
|--------------------|---------------------|
| fan_min / max      | 10% / 18%           |
| fan_first_layers   | 0 (désactivé 1-3)   |
| avoid_crossing     | ON — 8 mm           |
| wipe_dist          | 0.75 mm             |

## START_PRINT

**OrcaSlicer / Bambu Studio :**
```gcode
GUARDS_CHECK_TPU85A TEMP={nozzle_temperature_initial_layer} SPEED={outer_wall_speed} FLOW={filament_flow_ratio} MACHINE=EX0
```

**PrusaSlicer / Slic3r :**
```gcode
GUARDS_CHECK_TPU85A TEMP=[first_layer_temperature] SPEED=[external_perimeter_speed] FLOW=[extrusion_multiplier] MACHINE=EX1
```

---
*Source : REX IT-8 · printer.cfg V9 EX0 · 20/03/2026*
