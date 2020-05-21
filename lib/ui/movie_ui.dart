import 'package:movies_app/model/movie.dart';
import 'package:flutter/material.dart';

class MovieDetailsThumbnail extends StatelessWidget {
  final String thumbnail;

  const MovieDetailsThumbnail({Key key, this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(thumbnail), fit: BoxFit.cover)),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Icon(
                  Icons.play_circle_outline,
                  size: 120,
                  color: Colors.white70,
                ),
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          height: 80,
        )
      ],
    );
  }
}

class MovieDetailsHeaderWithPoster extends StatelessWidget {
  final Movie movie;
  const MovieDetailsHeaderWithPoster({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:16.0),
      child: Row(
        children: <Widget>[
          MoviePoster(poster: movie.images[0].toString(),),
          SizedBox(width: 20,),
          Expanded(
            child: MovieDetailsHeader(movie: movie),
          )
        ],
      ),
    );
  }
}

class MovieDetailsHeader extends StatelessWidget {
  final Movie movie;

  const MovieDetailsHeader({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("${movie.year} . ${movie.genre}".toUpperCase(),
            style:
            TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.cyan
            )),
        Text(movie.title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30 )),
        Text.rich(TextSpan(
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300
            ),
            children: <TextSpan>[
              TextSpan(
                  text: movie.plot
              ),
              TextSpan(
                text: "More...",
                style:
                TextStyle(
                    color: Colors.blueAccent
                ),)

            ]
        ))
      ],
    );
  }
}


class MoviePoster extends StatelessWidget {
  final String poster;

  const MoviePoster({Key key, this.poster}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.all(Radius.circular(10));
    return Card(
        child: ClipRRect(
            borderRadius: borderRadius,
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(poster),
                      fit: BoxFit.cover
                  )
              ),
            )
        )
    );
  }
}

class MovieCast extends StatelessWidget {
  final Movie movie;

  const MovieCast({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          MovieField(field: "Cast", value: movie.actors),
          MovieField(field: "Director", value: movie.director)
        ],
      ),
    );
  }
}

class MovieField extends StatelessWidget {
  final String field,value;

  const MovieField({Key key, this.field, this.value}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("${field}: ", style: TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.w300
        ),),
        Flexible(
          child: Text(value,style: TextStyle(
              color: Colors.black, fontSize: 16,fontWeight: FontWeight.w300
          ),),
        )
      ],
    );
  }
}

class HorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:12 ,horizontal: 16),
      child: Container(
        height: 0.5,
        color: Colors.grey,
      ),
    );
  }
}

class MovieExtraPosters extends StatelessWidget {
  final List<String> posters;

  const MovieExtraPosters({Key key, this.posters}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("More Movie Posters".toUpperCase(), style:
        TextStyle(
            fontSize: 14,
            color: Colors.black
        ),),
        HorizontalLine(),
        Container(
          height: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context,index) => SizedBox(
                width: 8,
              ),
              itemCount: posters.length,
              itemBuilder: (context,index) => ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: 160,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(posters[index]),fit: BoxFit.cover)
                  ),
                ),
              )),
        )
      ],
    );
  }
}
