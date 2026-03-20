# Guide de partage des profils — rex-fdm-materials_clear

> Partager un profil = partager une fenêtre process validée, pas un fichier slicer brut.

---

## ⚠️ Alertes actives

> **printer.cfg EX0 en cours d'itération** — le fichier `adapters/EX0-QIDI/EX0-QIDI_machine_profile.cfg`
> est généré depuis `printer.cfg V9` (20/03/2026), lui-même dérivé du firmware usine OG V4.3.15.
> Certains paramètres ont évolué entre OG et V9 — voir tableau ci-dessous.

| Paramètre            | OG usine        | V9 actuel       | Statut          |
|----------------------|-----------------|-----------------|-----------------|
| position_max X/Y     | 325 mm          | 315 mm          | [FIX-1] V7      |
| max_z_accel          | 500 mm/s²       | 800 mm/s²       | [GAIN-1] V6     |
| square_corner_vel    | 8 mm/s          | 12 mm/s         | [GAIN-4] V6     |
| z_offset             | 1.400 (OG)      | 1.124 (V9)      | calibré 11/03   |
| mesh min_x           | 25.0 (OG)       | 58.0 (V9)       | recalibré V8    |
| M4029 (probe cal.)   | double ABORT    | corrigé         | [BUG-2] V6      |
| smooth_time extruder | 0.000001 (OG)   | 0.04 (V9)       | corrigé V9      |

> **Les macros matières** (`Materials/petg_start_print.cfg` etc.) présentes dans le printer.cfg V9
> sont des fichiers séparés — non versionnés dans ce repo. Vérifier cohérence avant usage.

---

## ⚠️ Compatibilité firmware — LIRE AVANT D'UTILISER

Les macros `GUARDS_CHECK_*` et les fichiers `.cfg` de ce repo fonctionnent **uniquement sur Klipper**.

| Machine | Firmware       | Macros .cfg | Guards check | Notes |
|---------|----------------|-------------|--------------|-------|
| EX0 Qidi X-Max 3 | Klipper V4.3.15 | ✅ `[include]` direct | ✅ firmware | Voir alertes V9 ci-dessus |
| EX1 Artillery SWX2 | Ethereal 3D (Marlin) | ❌ pas de `[include]` | ❌ slicer only | G-code Marlin standard |
| EX3 Bambu A1 | Bambu propriétaire | ❌ firmware fermé | ❌ slicer only | Pas d'accès SSH/Klipper |

**Pour EX1 et EX3** : les garde-fous sont appliqués uniquement dans le slicer via le START_PRINT.
Les fichiers `.md` et `.pdf` des adapters EX1/EX3 contiennent les blocs G-code prêts à coller.

---

## Ce que tu partages

| Fichier | Contenu | Format | Compatible |
|---------|---------|--------|------------|
| `materials/*/fenetre_process_*.cfg` | Valeurs nominales + limites | Klipper cfg | EX0 uniquement |
| `macros/*/guards_check_*.cfg` | Assertions process | Klipper cfg | EX0 uniquement |
| `adapters/EX*/` | Profil machine + START_PRINT | .md + .pdf | Référence tous |
| `profiles/PETG/*.json` | Profil slicer exportable | Bambu/Orca JSON | EX0 + EX3 |

**Ne pas partager** : `printer.cfg` source EX0 — contient z_offset et mesh personnels.

---

## Recevoir un profil (ami → toi)

### Étape 1 — Cloner ou puller
```bash
git clone https://github.com/MollyMoxley/rex-fdm-materials_clear.git
# ou si déjà cloné :
git pull
```

### Étape 2 — Si tu as un EX0 Klipper
Dans ton `printer.cfg` :
```cfg
[include rex-fdm-materials_clear/materials/PETG/fenetre_process_petg_clear.cfg]
[include rex-fdm-materials_clear/macros/PETG/guards_check_petg_clear.cfg]
[include rex-fdm-materials_clear/materials/TPU/fenetre_process_tpu85a.cfg]
[include rex-fdm-materials_clear/macros/TPU/guards_check_tpu85a.cfg]
```

> ⚠️ Vérifier que ton `z_offset`, mesh, et PID sont les tiens — ne pas écraser avec les valeurs EX0.

### Étape 3 — Si tu as un EX1 Artillery (Marlin) ou EX3 Bambu
Ouvrir le fichier adapter correspondant :
```
adapters/EX1-ARTILLERY/EX1-ARTILLERY_machine_profile.md
adapters/EX3-BAMBU-A1/EX3-BAMBU-A1_machine_profile.md
```
Copier le bloc START_PRINT dans ton slicer — les garde-fous y sont intégrés.

### Étape 4 — Importer profil slicer JSON
```
OrcaSlicer / Bambu Studio :
  Fichier → Importer → Profil filament
  → sélectionner profiles/PETG/*.json
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
