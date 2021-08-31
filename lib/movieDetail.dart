import 'package:flutter/material.dart';
import 'movie.dart';

class MovieDetailScreen extends StatefulWidget {
  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState();
  final Movie movie;
  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {

  @override
  Widget build(BuildContext context) {
    Movie movie = widget.movie;

    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: SizedBox(height: MediaQuery.of(context).size.height * 0.5, child: Image(image: AssetImage('images/posters/' + movie.poster + '.jpg'),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Titre : ' + movie.title,
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Réalisateur : ' + movie.director,
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Genres : ' + movie.genresString(),
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Acteurs : ' + movie.actorString(),
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Description : ' + movie.description,
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}