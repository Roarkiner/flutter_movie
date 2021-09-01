import 'package:flutter/material.dart';
import 'package:movie_project/movieDetail.dart';
import 'package:movie_project/search_widget.dart';
import 'movie.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  String query = '';
  List<Movie> filteredMovies = movies;

  selectImage(int selectIndex) {
    setState(() {
      selectedIndex = selectIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          children: [
            searchBar(),
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Films',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
            Flexible(
              child: createMovieList(context, filteredMovies)
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBar() => SearchWidget(
    text: query,
    hintText: 'Titre du film',
    onChanged: searchMovie,
  );

  Widget createMovieList(BuildContext context, list){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .55,
              width: MediaQuery.of(context).size.width * .7,
              child: Material(
                borderRadius: BorderRadius.circular(25),
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return MovieDetailScreen(movie: list[index]);
                      })
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Column(
                      children: [
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height *
                                  .45,
                          child: Image(
                            image: AssetImage(
                                "images/posters/" +
                                    list[index].poster +
                                    ".jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height *
                                  .1,
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Titre : ' + list[index].title,
                                style: TextStyle(fontSize: 18),
                                maxLines: 2,
                              ),
                              Text(
                                'Genres : ' +
                                    list[index].genresString(),
                                style: TextStyle(fontSize: 16),
                                maxLines: 2,
                              ),
                              Text(
                                'Année de sortie : ' +
                                    list[index]
                                        .yearParution
                                        .toString(),
                                style: TextStyle(fontSize: 16),
                                maxLines: 2,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }

  void searchMovie(String query){
    final filteredMovies = movies.where((movie) {
      final titleLower = movie.title.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.filteredMovies = filteredMovies;
    });
  }
}



