; ============================================================
; MACRO PETG — EX1 Artillery Sidewinder X2
; Firmware    : Marlin (Ethereal3D)
; Extrudeur   : Bowden long (~400mm)
; Sonde ABL   : LJ12A3-4-Z/BX inductif (remplacé BLTouch)
; Plateau     : 300 x 300 x 400 mm
; Matière     : PETG Clear Overture
; Source      : materials/PETG-CLEAR-OVERTURE.mat
; Version     : 1.0 — 2026-03-20
; Statut      : ESSAI — à valider
; ============================================================

; --- VARIABLES ORCA (remplacées à la génération du GCODE) ---
; {first_layer_temperature}     → temp nozzle première couche
; {temperature}                 → temp nozzle autres couches
; {first_layer_bed_temperature} → temp bed première couche
; {bed_temperature}             → temp bed autres couches

; ============================================================
; START GCODE
; ============================================================
M104 S{first_layer_temperature}      ; preheat nozzle sans attendre
M140 S{first_layer_bed_temperature}  ; preheat bed sans attendre
G28                                   ; home all axes
M420 S1                               ; charge mesh ABL sauvegardé
M109 S{first_layer_temperature}      ; wait nozzle temp
M190 S{first_layer_bed_temperature}  ; wait bed temp
G92 E0
G1 Z5 F3000                           ; lift nozzle
G1 X5 Y5 F6000                        ; move to start corner

; --- purge line gauche ---
G1 Z0.3 F3000
G92 E0
G1 Y270 E18 F600                      ; purge ligne 270mm (vitesse réduite Bowden)
G1 X6.5 F3000
G1 Y5 E36 F600                        ; retour purge
G92 E0
G1 Z2 F3000                           ; lift avant impression

; ============================================================
; END GCODE
; ============================================================
M104 S0                               ; nozzle off
M140 S0                               ; bed off
M106 S0                               ; fan off
G92 E0
G1 E-4 F800                           ; retract 4mm (Bowden)
G91                                   ; coordonnées relatives
G1 Z10 F3000                          ; lift Z +10mm
G90                                   ; coordonnées absolues
G1 X5 Y280 F6000                      ; move to front-left
M84                                   ; motors off

; ============================================================
; NOTES D ADAPTATION EX1 BOWDEN
; ============================================================
; - Rétraction 4.5mm @ 40mm/s dans profil Orca (Bowden long ~400mm)
; - Retract end GCODE = 4mm supplémentaire pour éviter ooze parking
; - Vitesse purge réduite à F600 (vs F800 DD) — Bowden plus lent en démarrage
; - Température réduite 250°C vs 255°C — moins de pression = moins d ooze
; - M420 S1 = charge mesh UBL/ABL sauvegardé (Ethereal3D Marlin)
; - Si pas de mesh sauvegardé : remplacer M420 S1 par G29 (ABL live)
; ============================================================
