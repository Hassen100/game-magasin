# 🚀 Démarrage Rapide - Game Store Dashboard

## ⚡ Installation en 3 étapes

### 1. Prérequis
```bash
# Vérifier Node.js (v18+)
node --version

# Vérifier npm (v9+)
npm --version

# Installer Angular CLI (si nécessaire)
npm install -g @angular/cli
```

### 2. Démarrer l'application
```bash
# Se placer dans le dossier
cd game-store-dashboard

# Installer les dépendances
npm install

# Lancer le serveur de développement
ng serve --open
```

### 3. Accéder à l'application
- L'app s'ouvre automatiquement à `http://localhost:4200`
- Si non, ouvrez ce lien manuellement dans votre navigateur

## 🎯 Navigation Rapide

### Menu Principal
- **🏠 Home** → Dashboard avec statistiques
- **📚 Catalogue** → Tous les jeux avec filtres
- **🤖 AI Recommendations** → Suggestions personnalisées

### Actions Clés
- **Rechercher** : Utilisez la barre de recherche dans Catalogue
- **Filtrer** : Sélectionnez un genre dans Catalogue
- **Trier** : Changez l'ordre de tri (Prix, Note, Popularité)
- **Afficher** : Basculez entre vue grille et liste

## 📱 Types d'Écrans Supportés

✅ **Desktop** (1400px+)  
✅ **Tablet** (768px-1024px)  
✅ **Mobile** (<768px)  

Redimensionnez votre navigateur pour tester!

## 📋 Exemple d'Utilisation

### Trouver un jeu RPG
1. Cliquez sur **Catalogue** dans le menu
2. Déroulez le menu **Genre** et sélectionnez **Action RPG**
3. Explorez la liste filtrée
4. Cliquez sur un jeu pour voir les détails

### Obtenir des recommandations
1. Allez à **AI Recommendations**
2. Cliquez sur vos genres favoris (RPG, Fantasy, etc.)
3. Regardez les recommandations montrer instantanément
4. Cliquez sur un jeu pour explorer

### Comprendre les notes
- 🟢 **9.0+** : Excellent
- 🟡 **8.0-8.9** : Très bon
- 🟠 **7.0-7.9** : Bon
- 🔴 **<7.0** : À considérer

## 🛠️ Commandes Utiles

```bash
# Serveur de dev (hot reload)
ng serve

# Build pour production
ng build

# Tests
ng test

# Linter
ng lint
```

## 🎨 Personnalisation

### Ajouter un jeu
Modifiez `src/app/services/games.service.ts`:
```typescript
{
  id: 11,
  title: 'Votre Jeu',
  genre: 'Action RPG',
  platform: 'PC, PlayStation, Xbox',
  price: 59.99,
  rating: 8.5,
  releaseDate: '2024-01-01',
  image: 'url-image',
  description: 'Description',
  publisher: 'Éditeur',
  popularity: 85,
  tags: ['Tag1', 'Tag2']
}
```

### Modifier l'algorithme IA
Éditez la méthode dans `src/app/services/ai-recommendations.service.ts`

### Changer les couleurs
Modifiez les CSS files (gradients `.hsl`, `.rgb` ou couleurs hex)

## ⚠️ Dépannage

### "Port 4200 est déjà utilisé"
```bash
ng serve --port 4201
```

### "Module not found"
```bash
npm install
# ou
npm install --legacy-peer-deps
```

### L'app ne s'ouvre pas
- Accédez manuellement à `http://localhost:4200`
- Vérifiez la console du navigateur (F12)

### Cache problématique
```bash
# Vider le cache npm
npm cache clean --force

# Supprimer node_modules
rm -r node_modules
npm install
```

## 🌐 URLs Importantes

- **Application** : http://localhost:4200
- **API** : Simul locale (GamesService)
- **Documentation Angular** : https://angular.dev

## 📚 Structure de Base

```
game-store-dashboard/
├── src/
│   ├── app/
│   │   ├── components/     # Tous les composants
│   │   ├── services/       # Logique métier
│   │   ├── models/         # Interfaces
│   │   └── app.routes.ts   # Routes
│   ├── index.html
│   └── styles.css
├── angular.json
└── package.json
```

## 🔐 Technologies Clés

| Tech | Version | Usage |
|------|---------|-------|
| Angular | 21.1 | Framework principal |
| TypeScript | 5.9 | Langage |
| RxJS | 7.8 | Réactivité |
| HTML5 | Latest | Markup |
| CSS3 | Latest | Styles |

## 📞 Support

- **Erreurs de compilation?** Vérifiez les imports
- **L'app crash?** Regardez la console (F12)
- **Données manquent?** Vérifiez `games.service.ts`

## ✨ Astuces Pro

1. **Utilisez les DevTools Angular**
   - Installez extension Chrome "Angular DevTools"
   - Inspectez les composants en temps réel

2. **Hot Module Replacement**
   - Modifiez les fichiers → auto-refresh
   - Pas besoin de recharger manuellement

3. **Mode Production**
   ```bash
   ng build --configuration production
   # Bundle optimisé dans dist/
   ```

4. **Ajouter des tests**
   ```bash
   ng test
   # Exécute les tests avec Vitest
   ```

---

**Prêt à explorer?** Commencez à l'adresse http://localhost:4200 ! 🎮

**Besoin d'aide?** Consultez le README.md pour plus de détails.
