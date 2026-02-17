<<<<<<< HEAD
# Script de déploiement automatique GitHub Pages
# Usage: .\deploy-github.ps1

Write-Host "🚀 Déploiement Game Store Dashboard sur GitHub Pages" -ForegroundColor Cyan
Write-Host "=================================================" -ForegroundColor Cyan

# Configuration
$GITHUB_USERNAME = "Hassen100"
$REPO_NAME = "game-store-dashboard"
$REPO_URL = "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"

# Étape 1: Initialiser Git
Write-Host "`n[1/5] Initialisation Git..." -ForegroundColor Yellow
git init
git config user.name "GitHub User"
git config user.email "user@github.com"

# Étape 2: Ajouter les fichiers
Write-Host "[2/5] Ajout des fichiers..." -ForegroundColor Yellow
git add .

# Étape 3: Premier commit
Write-Host "[3/5] Création du premier commit..." -ForegroundColor Yellow
git commit -m "Initial commit - Game Store Dashboard"

# Étape 4: Renommer la branche et configurer le remote
Write-Host "[4/5] Configuration du remote GitHub..." -ForegroundColor Yellow
git branch -M main
git remote add origin $REPO_URL

# Étape 5: Pousser le code
Write-Host "[5/5] Poussage vers GitHub..." -ForegroundColor Yellow
git push -u origin main

# Créer le dossier docs pour GitHub Pages
Write-Host "`n✅ Création du dossier /docs pour GitHub Pages..." -ForegroundColor Green
if (-not (Test-Path "docs")) {
    mkdir docs
}
Copy-Item "dist\$REPO_NAME\*" -Destination "docs\" -Recurse -Force

# Ajouter et pousser les fichiers de déploiement
Write-Host "⬆️  Poussage des fichiers de déploiement..." -ForegroundColor Green
git add docs
git commit -m "Deploy to GitHub Pages"
git push

# Afficher le résumé
Write-Host "`n" -ForegroundColor Cyan
Write-Host "🎉 DÉPLOIEMENT RÉUSSI!" -ForegroundColor Green
Write-Host "=================================================" -ForegroundColor Green
Write-Host "`n📍 Votre app sera bientôt accessible à:" -ForegroundColor Cyan
Write-Host "   https://$GITHUB_USERNAME.github.io/$REPO_NAME/" -ForegroundColor White
Write-Host "`n⏱️  Attendez 1-2 minutes pour que GitHub Pages se mette à jour." -ForegroundColor Yellow
Write-Host "`n📝 Vérifiez: Settings → Pages → GitHub Pages (should show 'live')" -ForegroundColor Cyan
Write-Host "`n=================================================" -ForegroundColor Green
=======
# Script de déploiement automatique GitHub Pages
# Usage: .\deploy-github.ps1

Write-Host "🚀 Déploiement Game Store Dashboard sur GitHub Pages" -ForegroundColor Cyan
Write-Host "=================================================" -ForegroundColor Cyan

# Configuration
$GITHUB_USERNAME = "Hassen100"
$REPO_NAME = "game-store-dashboard"
$REPO_URL = "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"

# Étape 1: Initialiser Git
Write-Host "`n[1/5] Initialisation Git..." -ForegroundColor Yellow
git init
git config user.name "GitHub User"
git config user.email "user@github.com"

# Étape 2: Ajouter les fichiers
Write-Host "[2/5] Ajout des fichiers..." -ForegroundColor Yellow
git add .

# Étape 3: Premier commit
Write-Host "[3/5] Création du premier commit..." -ForegroundColor Yellow
git commit -m "Initial commit - Game Store Dashboard"

# Étape 4: Renommer la branche et configurer le remote
Write-Host "[4/5] Configuration du remote GitHub..." -ForegroundColor Yellow
git branch -M main
git remote add origin $REPO_URL

# Étape 5: Pousser le code
Write-Host "[5/5] Poussage vers GitHub..." -ForegroundColor Yellow
git push -u origin main

# Créer le dossier docs pour GitHub Pages
Write-Host "`n✅ Création du dossier /docs pour GitHub Pages..." -ForegroundColor Green
if (-not (Test-Path "docs")) {
    mkdir docs
}
Copy-Item "dist\$REPO_NAME\*" -Destination "docs\" -Recurse -Force

# Ajouter et pousser les fichiers de déploiement
Write-Host "⬆️  Poussage des fichiers de déploiement..." -ForegroundColor Green
git add docs
git commit -m "Deploy to GitHub Pages"
git push

# Afficher le résumé
Write-Host "`n" -ForegroundColor Cyan
Write-Host "🎉 DÉPLOIEMENT RÉUSSI!" -ForegroundColor Green
Write-Host "=================================================" -ForegroundColor Green
Write-Host "`n📍 Votre app sera bientôt accessible à:" -ForegroundColor Cyan
Write-Host "   https://$GITHUB_USERNAME.github.io/$REPO_NAME/" -ForegroundColor White
Write-Host "`n⏱️  Attendez 1-2 minutes pour que GitHub Pages se mette à jour." -ForegroundColor Yellow
Write-Host "`n📝 Vérifiez: Settings → Pages → GitHub Pages (should show 'live')" -ForegroundColor Cyan
Write-Host "`n=================================================" -ForegroundColor Green
>>>>>>> bcaa630b4722153f990c586ad506725c76faf064
