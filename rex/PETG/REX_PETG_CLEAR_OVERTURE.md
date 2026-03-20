# REX — PETG Clear Overture (Transparent)

> Statut : 🟡 En cours — peu de tests validés  
> Machines : A1 (Bambu) · EX0 (Qidi X-Max 3) · EX1 (Artillery X2 / Ethereal3D Marlin)  
> Dernière mise à jour : 2026-03-20  
> Source profil de base : https://makerworld.com/fr/models/30226-overture-petg-filament-profile-p1p#profileId-83020  
> Extraction : `project_settings.config` (3MF dézippé) — 2026-03-20

---

## 1. Identification matière

| Paramètre | Valeur |
|---|---|
| Marque | Overture |
| Référence | PETG Clear (Transparent) |
| Diamètre | 1.75 mm |
| Densité | 1.27 g/cm³ |
| Température vitrification | ~70°C |
| Temp. nozzle range | 220–270°C |

---

## 2. Paramètres de base (point de départ)

### A1 — Bambu Lab

| Paramètre | 0.4 mm | 0.6 mm |
|---|---|---|
| Temp. nozzle | 255°C | 260°C |
| Temp. bed | 80°C (PEI texturé) | 80°C |
| Flow ratio | 0.935 | 0.935 |
| Rétraction | 0.8 mm @ 30 mm/s | 0.8 mm @ 30 mm/s |
| Z-hop | 0.4 mm | 0.4 mm |
| Fan min/max | 25% / 70% | 25% / 70% |
| Fan OFF premières couches | 3 | 3 |
| Max volumetric speed | 12 mm³/s | 18 mm³/s |
| Vitesse outer wall | 150 mm/s | 120 mm/s |
| Vitesse première couche | 50 mm/s | 50 mm/s |

### EX0 — Qidi X-Max 3

| Paramètre | 0.4 mm |
|---|---|
| Temp. nozzle | 255°C |
| Temp. bed | 80°C |
| Flow ratio | 0.935 |
| Rétraction | 1.0 mm @ 35 mm/s |
| Z-hop | 0.4 mm |
| Fan | 25–70% |
| Max volumetric speed | 10 mm³/s |

> ⚠️ Valeurs EX0 à valider — extrapolées depuis A1

### EX1 — Artillery Sidewinder X2 (Ethereal3D / Marlin)

| Paramètre | 0.4 mm |
|---|---|
| Temp. nozzle | 250°C |
| Temp. bed | 75°C |
| Flow ratio | 0.935 |
| Rétraction | 4.5 mm @ 40 mm/s |
| Z-hop | 0.2 mm |
| Fan | 30–70% |
| Max volumetric speed | 8 mm³/s |

> ⚠️ EX1 = Bowden long — rétraction significativement plus haute que Direct Drive

---

## 3. Résultats expérimentaux

### Sessions

| Date | Machine | Buse | Résultat global | Notes |
|---|---|---|---|---|
| — | — | — | — | À compléter |

### Critères d'évaluation

- [ ] Adhérence première couche
- [ ] Stringing
- [ ] Transparence optique
- [ ] Résistance mécanique
- [ ] Warping
- [ ] Sous-extrusion

---

## 4. Problèmes rencontrés

| Problème | Cause identifiée | Solution | Statut |
|---|---|---|---|
| — | — | — | — |

---

## 5. Mode transparence maximale

> Paramètres spécifiques optique — sacrifie résistance mécanique

| Paramètre | Valeur |
|---|---|
| Temp. nozzle | 270°C |
| Fan | OFF (toute la pièce) |
| Pattern infill | Monotonic 100% |
| Flow | 1.01 |
| Vitesse | 20 mm/s |
| Bed | Verre lisse |

---

## 6. Profils slicer liés

| Fichier | Machine | Slicer | Statut |
|---|---|---|---|
| `Overture PETG @BBL A1 0.4 nozzle.json` | A1 | Bambu Studio + Orca | ✅ |
| `Overture PETG @BBL A1 0.6 nozzle.json` | A1 | Bambu Studio + Orca | ✅ |
| `ESSAI @ A1 - PETG CLEAR - 0.20mm 0.4mm.json` | A1 | Bambu Studio + Orca | 🟡 |
| EX0 profil | Qidi X-Max 3 | Orca | 🔴 À créer |
| EX1 profil Klipper | Artillery X2 | Orca | 🔴 À créer |

---

## 7. DOE associé

Voir : [`DOE_PETG_CLEAR_OVERTURE_L9.md`](./DOE_PETG_CLEAR_OVERTURE_L9.md)

---

## 8. Conclusion provisoire

> À compléter après 3 sessions minimum sur chaque machine.
