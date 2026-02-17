export interface Game {
  id: number;
  title: string;
  genre: string;
  platform: string;
  price: number;
  rating: number;
  releaseDate: string;
  image: string;
  description: string;
  publisher: string;
  popularity: number;
  tags: string[];
}

export interface Recommendation {
  gameId: number;
  score: number;
  reason: string;
}
