# DOE Taguchi L9 — PETG Clear Overture

> Statut : 🔴 Non lancé  
> Machine cible initiale : EX0 Qidi X-Max 3  
> Objectif : qualifier les paramètres optimaux pour PETG Clear en usage fonctionnel + optique

---

## 1. Critères de design (réponses mesurées)

| # | Critère | Unité | Méthode mesure | Priorité |
|---|---|---|---|---|
| Y1 | Dimensions XY | mm | Pied à coulisse | ★★★ |
| Y2 | Résistance traction | qualitatif 1–5 | Test rupture main | ★★★ |
| Y3 | Transparence | qualitatif 1–5 | Visuel / backlight | ★★ |
| Y4 | Stringing | qualitatif 1–5 | Visuel post-impression | ★★ |
| Y5 | Adhérence première couche | qualitatif 1–5 | Visuel + décollement | ★★ |

> Score global = (Y1_écart × 0.3) + (Y2 × 0.25) + (Y3 × 0.2) + (Y4 × 0.15) + (Y5 × 0.1)

---

## 2. Variables et niveaux (4 facteurs × 3 niveaux = L9)

| Facteur | Variable | Niveau 1 | Niveau 2 | Niveau 3 |
|---|---|---|---|---|
| A | Température nozzle | 245°C | 255°C | 265°C |
| B | Flow ratio | 0.90 | 0.935 | 0.97 |
| C | Vitesse impression | 80 mm/s | 120 mm/s | 160 mm/s |
| D | Refroidissement fan | 0% | 35% | 70% |

---

## 3. Matrice Taguchi L9

| Essai | A (Temp) | B (Flow) | C (Vitesse) | D (Fan) |
|---|---|---|---|---|
| 01 | 1 (245°C) | 1 (0.90) | 1 (80) | 1 (0%) |
| 02 | 1 (245°C) | 2 (0.935) | 2 (120) | 2 (35%) |
| 03 | 1 (245°C) | 3 (0.97) | 3 (160) | 3 (70%) |
| 04 | 2 (255°C) | 1 (0.90) | 2 (120) | 3 (70%) |
| 05 | 2 (255°C) | 2 (0.935) | 3 (160) | 1 (0%) |
| 06 | 2 (255°C) | 3 (0.97) | 1 (80) | 2 (35%) |
| 07 | 3 (265°C) | 1 (0.90) | 3 (160) | 2 (35%) |
| 08 | 3 (265°C) | 2 (0.935) | 1 (80) | 3 (70%) |
| 09 | 3 (265°C) | 3 (0.97) | 2 (120) | 1 (0%) |

---

## 4. Tableau de résultats

| Essai | A | B | C | D | Y1 écart mm | Y2 résistance | Y3 transparence | Y4 stringing | Y5 adhérence | Score |
|---|---|---|---|---|---|---|---|---|---|---|
| 01 | 245 | 0.90 | 80 | 0% | — | — | — | — | — | — |
| 02 | 245 | 0.935 | 120 | 35% | — | — | — | — | — | — |
| 03 | 245 | 0.97 | 160 | 70% | — | — | — | — | — | — |
| 04 | 255 | 0.90 | 120 | 70% | — | — | — | — | — | — |
| 05 | 255 | 0.935 | 160 | 0% | — | — | — | — | — | — |
| 06 | 255 | 0.97 | 80 | 35% | — | — | — | — | — | — |
| 07 | 265 | 0.90 | 160 | 35% | — | — | — | — | — | — |
| 08 | 265 | 0.935 | 80 | 70% | — | — | — | — | — | — |
| 09 | 265 | 0.97 | 120 | 0% | — | — | — | — | — | — |

---

## 5. Analyse S/N (Signal-to-Noise)

> À compléter après collecte résultats

### Formule S/N (objectif : maximiser)
```
S/N = -10 × log10(1/n × Σ(1/yi²))
```

### Tableau S/N par facteur

| Niveau | A (Temp) | B (Flow) | C (Vitesse) | D (Fan) |
|---|---|---|---|---|
| 1 | — | — | — | — |
| 2 | — | — | — | — |
| 3 | — | — | — | — |
| **Delta** | — | — | — | — |
| **Rang** | — | — | — | — |

---

## 6. Pièce de test recommandée

- Modèle : cube 20×20×20 mm + pont 30 mm
- Hauteur couche : 0.20 mm fixe
- Walls : 3 périmètres
- Infill : 20% gyroid
- Supports : non

---

## 7. Conditions fixes (non variables)

| Paramètre | Valeur fixée |
|---|---|
| Hauteur couche | 0.20 mm |
| Buse | 0.4 mm |
| Bed temp | 80°C |
| Rétraction | 0.8 mm @ 30 mm/s (A1) |
| Z-hop | 0.4 mm |
| Lot filament | À noter avant test |
| Temp. ambiante | À noter avant test |

---

## 8. Protocole d'exécution

1. Préparer 9 fichiers GCODE séparés (un par essai)
2. Nommer : `DOE_PETG_CL_E01.gcode` → `DOE_PETG_CL_E09.gcode`
3. Imprimer dans l'ordre 01→09 sans interruption si possible
4. Mesurer et noter Y1–Y5 immédiatement après refroidissement
5. Calculer scores et S/N
6. Identifier combinaison optimale
7. Essai de confirmation avec paramètres optimaux

---

## 9. Résultat optimal prévu

> À compléter après analyse S/N

| Facteur | Niveau optimal | Valeur |
|---|---|---|
| A Température | — | — |
| B Flow | — | — |
| C Vitesse | — | — |
| D Fan | — | — |

---

## 10. Historique

| Date | Machine | Lot filament | Temp ambiante | Statut |
|---|---|---|---|---|
| — | — | — | — | 🔴 Non lancé |
