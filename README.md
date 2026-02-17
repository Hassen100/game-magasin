<<<<<<< HEAD
# 🎮 Game Store Dashboard - Frontend Intelligent

Un site web frontend moderne et responsif pour un magasin de jeux vidéo, avec un dashboard intelligent, un catalogue complet, et des recommandations alimentées par l'IA.

## ✨ Fonctionnalités

### 📊 Dashboard Intelligent
- **Page d'accueil attractive** avec statistiques en temps réel
  - Nombre total de jeux en stock
  - Note moyenne globale
  - Nombre de genres disponibles
- **Jeux populaires** : Affiche les 6 jeux les plus populaires
- **Tendances IA** : Jeux tendance avec insights alimentés par l'IA
- **Appel à l'action** : Navigation facile vers le catalogue complet

### 📚 Catalogue Complet
- **Grille/Liste responsive** : Vue flexible pour naviguer les jeux
- **Recherche avancée** : Recherche par titre, genre ou tags
- **Filtrage par genre** : Filtrer les jeux par catégorie
- **Tri intelligent** : 
  - Jeux les plus populaires
  - Mieux notés
  - Prix (bas au haut / haut au bas)
- **Alternance vue** : Basculer entre vue grille et vue liste
- **Statistiques** : Affichage du nombre de résultats

### 🎮 Détails du Jeu
- **Présentation héroïque** : Grand aperçu du jeu avec image de couverture
- **Informations complètes** :
  - Titre, genre, plateforme
  - Prix et note de raduction (0-10)
  - Description détaillée
  - Date de sortie
  - Éditeur/Développeur
  - Tags du jeu
- **Recommandations IA** : 5 jeux similaires recommandés par l'IA
- **Jeux similaires** : Jeux du même genre
- **Bouton d'ajout au panier** : Interface d'achat

### 🤖 Recommandations IA
- **Recommandations personnalisées** :
  - Sélection des genres favoris
  - Jeux recommandés basés sur vos préférences
  - Score IA pour chaque jeu (0-100%)
  - Barre de progression visuelle
- **Tendances actuelles** : Jeux tendance avec insights IA
- **Explications IA** : Raisons des recommandations
- **Section éducative** : Comment l'IA fonctionne
- **Appel à l'action** : Navigation vers le catalogue

### 🎨 Interface Moderne et Responsive
- **Design moderne** : Gradient violet/bleu sophistiqué
- **Responsive complète** : Fonctionnement optimal sur tous les appareils
  - Desktop (1400px+)
  - Tablet (768px - 1024px)
  - Mobile (< 768px)
- **Navigation sticky** : Header collant en haut
- **Menu mobile** : Navigation hamburger adaptive
- **Animations fluides** : Transitions et hover effects
- **Thème sombre** : Confortable pour les longues sessions

## 📁 Structure du Projet

```
src/app/
├── models/
│   └── game.interface.ts           # Interfaces TypeScript
├── services/
│   ├── games.service.ts            # Service de gestion des jeux
│   └── ai-recommendations.service.ts  # Service des recommandations IA
├── components/
│   ├── header/
│   │   ├── header.component.ts
│   │   ├── header.component.html
│   │   └── header.component.css
│   ├── dashboard/
│   │   ├── dashboard.component.ts
│   │   ├── dashboard.component.html
│   │   └── dashboard.component.css
│   ├── catalogue/
│   │   ├── catalogue.component.ts
│   │   ├── catalogue.component.html
│   │   └── catalogue.component.css
│   ├── game-detail/
│   │   ├── game-detail.component.ts
│   │   ├── game-detail.component.html
│   │   └── game-detail.component.css
│   └── recommendations/
│       ├── recommendations.component.ts
│       ├── recommendations.component.html
│       └── recommendations.component.css
├── app.routes.ts                   # Configuration du routing
├── app.ts                          # Composant principal
├── app.html                        # Template principal
├── app.css                         # Styles du composant
└── styles.css                      # Styles globaux
```

## 🛠️ Technologies Utilisées

- **Angular 21** : Framework Web moderne et performant
- **TypeScript** : Langage typé pour JavaScript
- **HTML5** : Markup sémantique
- **CSS3** : Styles modernes avec animations
- **RxJS** : Gestion réactive des données
- **Angular Router** : Navigation SPA (Single Page Application)

## 🚀 Getting Started

### Prérequis
- Node.js (v18+)
- npm (v9+)
- Angular CLI (`npm install -g @angular/cli`)

### Installation

1. **Naviguer vers le dossier du projet**
   ```bash
   cd game-store-dashboard
   ```

2. **Installer les dépendances**
   ```bash
   npm install
   ```

3. **Démarrer le serveur de développement**
   ```bash
   ng serve
   ```

4. **Ouvrir le navigateur**
   - Accédez à `http://localhost:4200/`
   - L'application se recharge automatiquement lors de modifications

## 📦 Données de l'Application

### Source des Données
- **Base de données simulée** : Images d'unsplash.com pour les couvertures
- **Jeux inclus** : 10 jeux AAA populaires (Cyberpunk 2077, Elden Ring, etc.)
- **Données statiques** : Stockées dans `GamesService`

### Données Disponibles pour Chaque Jeu
```typescript
{
  id: number,
  title: string,
  genre: string,
  platform: string,
  price: number,
  rating: number,
  releaseDate: string,
  image: string,
  description: string,
  publisher: string,
  popularity: number (0-100),
  tags: string[]
}
```

## 🧠 Moteur de Recommandations IA

### Algorithme
L'IA analyse plusieurs critères :

1. **Genre similaire** (+25 points)
2. **Qualité similaire** (+20 points pour rating ±0.5)
3. **Tags communs** (+15 points par tag en commun)
4. **Popularité** (+10 points si >90% populaire)
5. **Plateforme commune** (+15 points)
6. **Note élevée** (+25 points pour ≥9.0)

### Recommandations Personnalisées
- L'utilisateur sélectionne ses genres favoris
- L'IA calcule un score d'IA (0-100%) pour chaque jeu
- Les meilleurs matches sont affichés en premier

## 🎯 Routes de l'Application

| Route | Composant | Description |
|-------|-----------|-------------|
| `/` | DashboardComponent | Page d'accueil |
| `/catalogue` | CatalogueComponent | Catalogue des jeux |
| `/game/:id` | GameDetailComponent | Détails d'un jeu |
| `/recommendations` | RecommendationsComponent | Recommandations IA |

## 🎨 Palette de Couleurs

- **Primary Gradient** : #667eea → #764ba2 (Violet/Bleu)
- **Background** : #1a1a2e → #16213e (Sombre)
- **Text** : #ecf0f1 (Clair)
- **Accent** : #4CAF50 (Vert pour les ratings élevés)

## 📱 Breakpoints Responsifs

- **Desktop** : 1400px et plus
- **Tablet** : 768px - 1024px
- **Mobile** : < 768px

## 🔍 Performance

- **Build size** : ~192 KB initial
- **Code splitting** : Chaque route a son propre bundle
- **Lazy loading** : Images optimisées d'unsplash
- **CSS nesting** : BEM methodology pour la maintenabilité

## 📝 Prochaines Améliorations Possibles

### 🔄 Court terme
- [ ] Panier au panier persistant (localStorage)
- [ ] Système de notation utilisateur
- [ ] Filtre par prix
- [ ] Animation de chargement (`skeleton` screens)

### 📊 Moyen terme
- [ ] Intégration API Backend
- [ ] Authentification utilisateur
- [ ] Historique de navigation
- [ ] Wishlist sauvegardée
- [ ] Avis utilisateurs

### 🚀 Long terme
- [ ] SSR (Server-Side Rendering) complet
- [ ] PWA (Progressive Web App)
- [ ] Notifications push
- [ ] Comparaison de jeux
- [ ] Forums communautaires

## 🤝 Contributing

Ce projet est un exemple éducatif. Pour jouer avec le code :

1. Modifier les données dans `games.service.ts`
2. Ajuster l'algorithme IA dans `ai-recommendations.service.ts`
3. Créer de nouveaux composants avec Angular CLI
4. Ajouter des tests avec Vitest

## 📄 Licence

MIT License - Libre d'utilisation pour des projets personnels et éducatifs.

## 👨‍💻 Créé avec

- **Angular 21.1** - Framework Web
- **TypeScript** - Langage de programmation
- **HTML5 & CSS3** - Markup et styles
- **GitHub Copilot** - Assistance IA

---

**Version** : 1.0.0  
**Dernière mise à jour** : Février 2026  

Pour plus d'informations sur Angular, consultez [angular.dev](https://angular.dev)

```bash
ng e2e
```

Angular CLI does not come with an end-to-end testing framework by default. You can choose one that suits your needs.

## Additional Resources

For more information on using the Angular CLI, including detailed command references, visit the [Angular CLI Overview and Command Reference](https://angular.dev/tools/cli) page.
=======
# 🎮 Game Store Dashboard - Frontend Intelligent

Un site web frontend moderne et responsif pour un magasin de jeux vidéo, avec un dashboard intelligent, un catalogue complet, et des recommandations alimentées par l'IA.

## ✨ Fonctionnalités

### 📊 Dashboard Intelligent
- **Page d'accueil attractive** avec statistiques en temps réel
  - Nombre total de jeux en stock
  - Note moyenne globale
  - Nombre de genres disponibles
- **Jeux populaires** : Affiche les 6 jeux les plus populaires
- **Tendances IA** : Jeux tendance avec insights alimentés par l'IA
- **Appel à l'action** : Navigation facile vers le catalogue complet

### 📚 Catalogue Complet
- **Grille/Liste responsive** : Vue flexible pour naviguer les jeux
- **Recherche avancée** : Recherche par titre, genre ou tags
- **Filtrage par genre** : Filtrer les jeux par catégorie
- **Tri intelligent** : 
  - Jeux les plus populaires
  - Mieux notés
  - Prix (bas au haut / haut au bas)
- **Alternance vue** : Basculer entre vue grille et vue liste
- **Statistiques** : Affichage du nombre de résultats

### 🎮 Détails du Jeu
- **Présentation héroïque** : Grand aperçu du jeu avec image de couverture
- **Informations complètes** :
  - Titre, genre, plateforme
  - Prix et note de raduction (0-10)
  - Description détaillée
  - Date de sortie
  - Éditeur/Développeur
  - Tags du jeu
- **Recommandations IA** : 5 jeux similaires recommandés par l'IA
- **Jeux similaires** : Jeux du même genre
- **Bouton d'ajout au panier** : Interface d'achat

### 🤖 Recommandations IA
- **Recommandations personnalisées** :
  - Sélection des genres favoris
  - Jeux recommandés basés sur vos préférences
  - Score IA pour chaque jeu (0-100%)
  - Barre de progression visuelle
- **Tendances actuelles** : Jeux tendance avec insights IA
- **Explications IA** : Raisons des recommandations
- **Section éducative** : Comment l'IA fonctionne
- **Appel à l'action** : Navigation vers le catalogue

### 🎨 Interface Moderne et Responsive
- **Design moderne** : Gradient violet/bleu sophistiqué
- **Responsive complète** : Fonctionnement optimal sur tous les appareils
  - Desktop (1400px+)
  - Tablet (768px - 1024px)
  - Mobile (< 768px)
- **Navigation sticky** : Header collant en haut
- **Menu mobile** : Navigation hamburger adaptive
- **Animations fluides** : Transitions et hover effects
- **Thème sombre** : Confortable pour les longues sessions

## 📁 Structure du Projet

```
src/app/
├── models/
│   └── game.interface.ts           # Interfaces TypeScript
├── services/
│   ├── games.service.ts            # Service de gestion des jeux
│   └── ai-recommendations.service.ts  # Service des recommandations IA
├── components/
│   ├── header/
│   │   ├── header.component.ts
│   │   ├── header.component.html
│   │   └── header.component.css
│   ├── dashboard/
│   │   ├── dashboard.component.ts
│   │   ├── dashboard.component.html
│   │   └── dashboard.component.css
│   ├── catalogue/
│   │   ├── catalogue.component.ts
│   │   ├── catalogue.component.html
│   │   └── catalogue.component.css
│   ├── game-detail/
│   │   ├── game-detail.component.ts
│   │   ├── game-detail.component.html
│   │   └── game-detail.component.css
│   └── recommendations/
│       ├── recommendations.component.ts
│       ├── recommendations.component.html
│       └── recommendations.component.css
├── app.routes.ts                   # Configuration du routing
├── app.ts                          # Composant principal
├── app.html                        # Template principal
├── app.css                         # Styles du composant
└── styles.css                      # Styles globaux
```

## 🛠️ Technologies Utilisées

- **Angular 21** : Framework Web moderne et performant
- **TypeScript** : Langage typé pour JavaScript
- **HTML5** : Markup sémantique
- **CSS3** : Styles modernes avec animations
- **RxJS** : Gestion réactive des données
- **Angular Router** : Navigation SPA (Single Page Application)

## 🚀 Getting Started

### Prérequis
- Node.js (v18+)
- npm (v9+)
- Angular CLI (`npm install -g @angular/cli`)

### Installation

1. **Naviguer vers le dossier du projet**
   ```bash
   cd game-store-dashboard
   ```

2. **Installer les dépendances**
   ```bash
   npm install
   ```

3. **Démarrer le serveur de développement**
   ```bash
   ng serve
   ```

4. **Ouvrir le navigateur**
   - Accédez à `http://localhost:4200/`
   - L'application se recharge automatiquement lors de modifications

## 📦 Données de l'Application

### Source des Données
- **Base de données simulée** : Images d'unsplash.com pour les couvertures
- **Jeux inclus** : 10 jeux AAA populaires (Cyberpunk 2077, Elden Ring, etc.)
- **Données statiques** : Stockées dans `GamesService`

### Données Disponibles pour Chaque Jeu
```typescript
{
  id: number,
  title: string,
  genre: string,
  platform: string,
  price: number,
  rating: number,
  releaseDate: string,
  image: string,
  description: string,
  publisher: string,
  popularity: number (0-100),
  tags: string[]
}
```

## 🧠 Moteur de Recommandations IA

### Algorithme
L'IA analyse plusieurs critères :

1. **Genre similaire** (+25 points)
2. **Qualité similaire** (+20 points pour rating ±0.5)
3. **Tags communs** (+15 points par tag en commun)
4. **Popularité** (+10 points si >90% populaire)
5. **Plateforme commune** (+15 points)
6. **Note élevée** (+25 points pour ≥9.0)

### Recommandations Personnalisées
- L'utilisateur sélectionne ses genres favoris
- L'IA calcule un score d'IA (0-100%) pour chaque jeu
- Les meilleurs matches sont affichés en premier

## 🎯 Routes de l'Application

| Route | Composant | Description |
|-------|-----------|-------------|
| `/` | DashboardComponent | Page d'accueil |
| `/catalogue` | CatalogueComponent | Catalogue des jeux |
| `/game/:id` | GameDetailComponent | Détails d'un jeu |
| `/recommendations` | RecommendationsComponent | Recommandations IA |

## 🎨 Palette de Couleurs

- **Primary Gradient** : #667eea → #764ba2 (Violet/Bleu)
- **Background** : #1a1a2e → #16213e (Sombre)
- **Text** : #ecf0f1 (Clair)
- **Accent** : #4CAF50 (Vert pour les ratings élevés)

## 📱 Breakpoints Responsifs

- **Desktop** : 1400px et plus
- **Tablet** : 768px - 1024px
- **Mobile** : < 768px

## 🔍 Performance

- **Build size** : ~192 KB initial
- **Code splitting** : Chaque route a son propre bundle
- **Lazy loading** : Images optimisées d'unsplash
- **CSS nesting** : BEM methodology pour la maintenabilité

## 📝 Prochaines Améliorations Possibles

### 🔄 Court terme
- [ ] Panier au panier persistant (localStorage)
- [ ] Système de notation utilisateur
- [ ] Filtre par prix
- [ ] Animation de chargement (`skeleton` screens)

### 📊 Moyen terme
- [ ] Intégration API Backend
- [ ] Authentification utilisateur
- [ ] Historique de navigation
- [ ] Wishlist sauvegardée
- [ ] Avis utilisateurs

### 🚀 Long terme
- [ ] SSR (Server-Side Rendering) complet
- [ ] PWA (Progressive Web App)
- [ ] Notifications push
- [ ] Comparaison de jeux
- [ ] Forums communautaires

## 🤝 Contributing

Ce projet est un exemple éducatif. Pour jouer avec le code :

1. Modifier les données dans `games.service.ts`
2. Ajuster l'algorithme IA dans `ai-recommendations.service.ts`
3. Créer de nouveaux composants avec Angular CLI
4. Ajouter des tests avec Vitest

## 📄 Licence

MIT License - Libre d'utilisation pour des projets personnels et éducatifs.

## 👨‍💻 Créé avec

- **Angular 21.1** - Framework Web
- **TypeScript** - Langage de programmation
- **HTML5 & CSS3** - Markup et styles
- **GitHub Copilot** - Assistance IA

---

**Version** : 1.0.0  
**Dernière mise à jour** : Février 2026  

Pour plus d'informations sur Angular, consultez [angular.dev](https://angular.dev)

```bash
ng e2e
```

Angular CLI does not come with an end-to-end testing framework by default. You can choose one that suits your needs.

## Additional Resources

For more information on using the Angular CLI, including detailed command references, visit the [Angular CLI Overview and Command Reference](https://angular.dev/tools/cli) page.
>>>>>>> bcaa630b4722153f990c586ad506725c76faf064
