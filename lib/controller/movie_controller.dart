import 'package:movie_app/model/movie_model.dart';
import 'package:movie_app/repository/repo.dart';

class MovieController {
  final Repository _repository;

  MovieController(this._repository);

  //get
  Future<MovieModel> fetchMovie() async {
    return _repository.getMovie();
  }
}
