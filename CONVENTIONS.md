# CONVENTIONS

## Statuts

| Emoji | Signification |
|---|---|
| 🔴 | Non testé |
| 🟡 | En cours / ESSAI |
| 🟢 | Validé / PROD |
| ⚫ | Abandonné |

## Nommage fichiers

| Type | Format |
|---|---|
| REX | `REX_[MATIERE]_[MARQUE].md` |
| DOE | `DOE_[MATIERE]_[MARQUE]_L[N].md` |
| Profil slicer | `[STATUT] @ [MACHINE] - [MATIERE] - [HAUTEUR]mm [BUSE]mm.json` |
| Macro Klipper | `[MATIERE]_[MACHINE]_[BUSE]mm.cfg` |

## Cycle de vie profil

```
ESSAI → test ≥ 3 sessions → résultats stables → PROD
```

## Structure REX

1. Identification matière
2. Paramètres de base
3. Résultats expérimentaux
4. Problèmes rencontrés
5. DOE associé
6. Profils slicer liés
7. Conclusion

## Règle DOE

- Minimum L4 pour qualifier une matière
- L9 recommandé pour PROD
- Toujours noter : date, machine, lot filament, température ambiante
