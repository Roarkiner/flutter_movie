import 'package:flutter/material.dart';
import 'package:movie_project/movie.dart';
import 'package:movie_project/movieDetail.dart';

class User {
  final String firstName;
  final String lastName;
  final String email;
  final String city;
  final String country;
  final List<Movie> favorites;

  const User(this.firstName, this.lastName, this.email, this.city, this.country, this.favorites);
}

User user = User('Scarlett', 'Johansson', 's.johansson@gmail.com', 'Manhattan', 'USA', [movies[0], movies[1], movies[2], movies[5], movies[7]]);

class ProfilScreen extends StatefulWidget {
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            _profilCard(context),
            _favoriteList(context)
          ],
        )
      ),
    );
  }
}

Widget _profilCard(BuildContext context){
  return Material(
    elevation: 10,
    borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width:  MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xfff2f2f2),
        border: Border.all(width: 1, color: Color(0xfff2f2f2)),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.05),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Scarlett.jpg'),
                  radius: 60,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.84 - 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(user.firstName + ' ' + user.lastName, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), maxLines: 2, overflow: TextOverflow.ellipsis,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.location_city_outlined),
                          ),
                          Expanded(child: Text(user.city + ', ' + user.country, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), maxLines: 2, overflow: TextOverflow.ellipsis,)),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.email_outlined),
                          ),
                        Expanded(child: Text(user.email, style: TextStyle(fontSize: 18), maxLines: 2, overflow: TextOverflow.ellipsis,)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ) 
    ),
  );
} 
  

Widget _favoriteList(BuildContext context){
  return Padding(
    padding: EdgeInsets.only(top: 15),
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.favorite, size: 30, color: Colors.pink[300],),
                ),
                Text('Mes favoris', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ((user.favorites.length - 1) ~/ 3) + 1,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.30, 
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return MovieDetailScreen(movie: user.favorites[index * 3],);
                          }),
                        );
                      },
                      child: Image(
                        image: AssetImage('images/posters/' + user.favorites[index * 3].poster + '.jpg')
                      ,),
                    )
                  ),
                  
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.30, 
                    child: user.favorites.asMap().containsKey(index * 3 + 1)
                    ? GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return MovieDetailScreen(movie: user.favorites[index * 3 + 1],);
                          }),
                        );
                      },
                      child: Image(
                        image: AssetImage('images/posters/' + user.favorites[index * 3 + 1].poster + '.jpg')
                      ,),
                    )
                    : Container()
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.30, 
                    child: user.favorites.asMap().containsKey(index * 3 + 2)
                    ? GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return MovieDetailScreen(movie: user.favorites[index * 3 + 2],);
                          }),
                        );
                      },
                      child: Image(
                        image: AssetImage('images/posters/' + user.favorites[index * 3 + 2].poster + '.jpg')
                      ,),
                    )
                    : Container()
                  )
                ],
              ),
            )
          ),
        ],
      ),
  );
}