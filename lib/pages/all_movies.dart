import 'package:flutter/material.dart';
import 'package:movie_app/controller/movie_controller.dart';
import 'package:movie_app/repository/movie_repo.dart';

import '../model/movie_model.dart';

class AllMovies extends StatefulWidget {
  AllMovies({Key key}) : super(key: key);

  @override
  State<AllMovies> createState() => _AllMoviesState();
}

class _AllMoviesState extends State<AllMovies> {
  @override
  Widget build(BuildContext context) {
    // var productController = MovieController(MovieRepository());
    return Scaffold(
      body: FutureBuilder<MovieModel>(
        future: MovieRepository().getMovie(),
        builder: (ctx, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("hasError"));
          }

          final data = snapshot.data;
          print(data?.data);
          return Center(child: Text(data.toJson().toString()));
        },
      ),
    );
  }
}
