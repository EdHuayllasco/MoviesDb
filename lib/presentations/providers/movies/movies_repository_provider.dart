import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repositories_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


//Este repositorio es inmutable, proporcionar infomracion necesaria
final movieRepositoryProvider = Provider((ref) {

  return MovieRepositoryImpl( MoviedbDatasource());
});
