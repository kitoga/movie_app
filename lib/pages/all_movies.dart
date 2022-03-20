import 'package:flutter/material.dart';
import 'package:movie_app/controller/movie_controller.dart';
import 'package:movie_app/repository/movie_repo.dart';

import '../model/movie_model.dart';

class AllMovies extends StatefulWidget {
  AllMovies({Key? key}) : super(key: key);

  @override
  State<AllMovies> createState() => _AllMoviesState();
}

class _AllMoviesState extends State<AllMovies> {
  @override
  Widget build(BuildContext context) {
    var productController = MovieController(MovieRepository());
    return Scaffold(
      body: FutureBuilder<MovieModel>(
        future: productController.fetchMovie(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("hasError"));
          }

          final data = snapshot.data;
          return ListView.builder(
            itemCount: data?.data?.movies?.length,
            itemBuilder: (context, index) {
              final movie = data?.data?.movies![index];
              return Text(movie!.language.toString());
            },
          );
        },
      ),
    );
  }
}
