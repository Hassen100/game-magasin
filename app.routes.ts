import { Routes } from '@angular/router';
import { DashboardComponent } from './components/dashboard/dashboard.component';
import { CatalogueComponent } from './components/catalogue/catalogue.component';
import { GameDetailComponent } from './components/game-detail/game-detail.component';
import { RecommendationsComponent } from './components/recommendations/recommendations.component';

export const routes: Routes = [
  {
    path: '',
    component: DashboardComponent
  },
  {
    path: 'catalogue',
    component: CatalogueComponent
  },
  {
    path: 'game/:id',
    component: GameDetailComponent
  },
  {
    path: 'recommendations',
    component: RecommendationsComponent
  },
  {
    path: '**',
    redirectTo: ''
  }
];
