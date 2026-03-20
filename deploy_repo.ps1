# deploy_repo.ps1
# Déploie la structure rex-fdm-materials_clear dans le repo local
# Usage : cd vers le dossier repo, puis .\deploy_repo.ps1

$repo = "$env:USERPROFILE\Documents\GitHub\rex-fdm-materials_clear"

# Crée les dossiers
$dirs = @(
    "$repo\rex\PETG",
    "$repo\profiles\PETG",
    "$repo\macros\PETG",
    "$repo\templates"
)
foreach ($d in $dirs) {
    New-Item -ItemType Directory -Force -Path $d | Out-Null
}

Write-Host "Dossiers créés." -ForegroundColor Green
Write-Host "Copie les fichiers .md et .json depuis ce dossier dans $repo"
Write-Host "Puis : git add . && git commit -m 'structure initiale repo' && git push"
