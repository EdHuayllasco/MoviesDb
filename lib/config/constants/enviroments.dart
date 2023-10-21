import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviormente {
  static String theMovieDbKey = dotenv.env['THE_MOVIE_DB_KEY'] ?? 'No hay apy Key';
}
