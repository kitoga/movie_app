import 'package:movie_app/model/project_model.dart';

import '../model/movie_model.dart';

abstract class Repository {
  Future<MovieModel> getMovie();

  //Future<ProductModel> getProduct();
}
