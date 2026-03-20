# Guide de partage des profils — rex-fdm-materials_clear

> Partager un profil = partager une fenêtre process validée, pas un fichier slicer brut.

---

## Ce que tu partages

| Fichier | Contenu | Format |
|---|---|---|
| `materials/PETG/fenetre_process_petg_clear.cfg` | Valeurs nominales + limites | Klipper cfg |
| `macros/PETG/guards_check_petg_clear.cfg` | Assertions process | Klipper cfg |
| `profiles/PETG/*.json` | Profil slicer exportable | Bambu/Orca JSON |
| `rex/PETG/REX_PETG_CLEAR_OVERTURE.md` | REX complet + contexte machine | Markdown |

**Ne pas partager** : `adapters/` — spécifique à ta config machine.

---

## Recevoir un profil (ami → toi)

### Étape 1 — Cloner ou puller
```bash
git clone https://github.com/MollyMoxley/rex-fdm-materials_clear.git
# ou si déjà cloné :
git pull
```

### Étape 2 — Importer dans OrcaSlicer / Bambu Studio
```
OrcaSlicer :
  Fichier → Importer → Profil filament
  → sélectionner profiles/PETG/*.json

Bambu Studio :
  même chemin
```

### Étape 3 — Ajouter les macros Klipper (si EX0 ou EX1)
Dans ton `printer.cfg` :
```cfg
[include rex-fdm-materials_clear/materials/PETG/fenetre_process_petg_clear.cfg]
[include rex-fdm-materials_clear/macros/PETG/guards_check_petg_clear.cfg]
```

### Étape 4 — Configurer le START_PRINT dans le slicer

**OrcaSlicer / Bambu Studio :**
```gcode
GUARDS_CHECK_PETG TEMP={nozzle_temperature_initial_layer} SPEED={outer_wall_speed} FLOW={filament_flow_ratio} MACHINE=EX3
```

**PrusaSlicer / Slic3r :**
```gcode
GUARDS_CHECK_PETG TEMP=[first_layer_temperature] SPEED=[external_perimeter_speed] FLOW=[extrusion_multiplier] MACHINE=EX1
```

---

## Contribuer un REX

1. Fork le repo
2. Ajouter ton REX dans `rex/PETG/REX_PETG_CLEAR_[TA_MARQUE].md`
3. Template disponible dans `templates/TEMPLATE_REX.md`
4. Pull request avec : matière · machine · nb impressions · date

---

## Règle fondamentale

```
Ne modifier JAMAIS un profil machine directement.
Modifier la source .cfg → régénérer les adaptateurs.
```

---

## Contact / Questions

Repo : https://github.com/MollyMoxley/rex-fdm-materials_clear
Issues GitHub pour signaler un profil défaillant ou proposer une matière.
