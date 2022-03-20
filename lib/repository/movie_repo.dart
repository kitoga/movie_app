import 'dart:convert';

import 'package:movie_app/model/movie_model.dart';
// import 'package:movie_app/model/project_model.dart';
// import 'package:movie_app/repository/repo.dart';
import 'package:http/http.dart' as http;

class MovieRepository {
  // @override
  Future<MovieModel> getMovie() async {
    String url = "https://yts.mx/api/v2/list_movies.json";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        final movie = MovieModel.fromJson(body);
        print(movie);
        return movie;
      } else {
        var body = jsonDecode(response.body);
        final error = MovieModel.fromJson(body);
        print(error);
        return error;
      }
    } catch (e) {
      print(e);
      return MovieModel.fromJson({'00': ''});
    }
  }

  // @override
  // Future<ProductModel> getProduct() async {
  //   String url = "";

  //   final response = await http.get(Uri.parse(url));
  // }
}
