import 'package:movies_app/model/movie.dart';
import 'package:movies_app/model/question.dart';
import 'package:movies_app/ui/movie_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.email), onPressed: () => debugPrint("Tapped")),
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () => _rspond(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("Hello"),
          child: Icon(Icons.arrow_upward)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("First")),
          BottomNavigationBarItem(
              icon: Icon(Icons.album), title: Text("Second")),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_location), title: Text("Third")),
        ],
        onTap: (int index) => debugPrint("Pressed ${index}"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[CustomButton()],
        ),
      ),
    );
  }

  _rspond() {
    debugPrint("Pressed via Method");
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          final snackbar = new SnackBar(content: Text("Hi How are you?"));
          Scaffold.of(context).showSnackBar(snackbar);
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(8.0)),
          child: Text("Button"),
        ));
  }
}

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biz Card"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getBizCard(), _getAvatar()],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.panorama_fish_eye), title: Text("First")),
          BottomNavigationBarItem(
              icon: Icon(Icons.palette), title: Text("Second")),
        ],
      ),
    );
  }

  Container _getBizCard() {
    return Container(
        width: 350,
        height: 200,
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Colors.pinkAccent, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pragatheswar"),
            Text("praga@informatica.com"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.person_outline),
                Text("praga@facebook.com")
              ],
            )
          ],
        ));
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.redAccent, width: 1.2),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300"),
              fit: BoxFit.cover)),
    );
  }
}

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Business Card")),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[_getBusinessCard(), _getAvadaram()],
        ),
      ),
    );
  }

  Container _getBusinessCard() {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 350,
      margin: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Pragatheswar",
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("praga@facebook.com")
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.amberAccent),
    );
  }

  Container _getAvadaram() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.redAccent, width: 1.2),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200/300"),
              fit: BoxFit.fill)),
    );
  }
}

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  List quotes = [
    "Bad donkey small wallssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssasdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
    "Donkey no camphor smellsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
    "Elephant also skiddingsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
    "make hay while sun shinessssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssfeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee",
    "Dogs tail no straightsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssfsafvds sdsdsfsdfsdfasfsafasfsafsa"
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amberAccent,
                  ),
                  child: Center(
                      child: Text(
                    quotes[_index % quotes.length],
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ))),
              Divider(
                thickness: 1.3,
                color: Colors.grey.shade600,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: FlatButton.icon(
                  onPressed: _getQuotes,
                  icon: Icon(Icons.flare),
                  label: Text("Inspire Me"),
                  color: Colors.green,
                ),
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }

  void _getQuotes() {
    setState(() {
      _index += 1;
    });
  }
}

class BillApp extends StatefulWidget {
  @override
  _BillAppState createState() => _BillAppState();
}

class _BillAppState extends State<BillApp> {
  int _tipPercentage = 0;
  int _personCounter = 1;
  double _billAmount = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4),
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: _hexToColor("#6908D6").withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Total Per Person",
                        style: TextStyle(
                            color: _hexToColor("#6908D6"),
                            fontSize: 18,
                            fontWeight: FontWeight.normal)),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                          "\$ ${calculateTotalPerPerson(_billAmount, _personCounter, _tipPercentage)}",
                          style: TextStyle(
                              color: _hexToColor("#6908D6"),
                              fontSize: 35,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 150,
              height: 300,
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Colors.blueGrey.shade400,
                      style: BorderStyle.solid)),
              child: Column(
                children: <Widget>[
                  TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                        prefixStyle: TextStyle(color: _hexToColor("#6908D6")),
                        prefixText: "Enter Bill Amount "
                        //prefixIcon: Icon(Icons.attach_money)
                        ),
                    onChanged: (String value) {
                      try {
                        _billAmount = double.parse(value);
                        debugPrint("Amount entered is: $_billAmount");
                      } catch (exception) {
                        _billAmount = 0.0;
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Split",
                        style: TextStyle(
                            color: _hexToColor("#6908D6"), fontSize: 17),
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_personCounter > 1) {
                                  _personCounter--;
                                } else {}
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color:
                                      _hexToColor("#6908D6").withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "-",
                                style: TextStyle(
                                    color: _hexToColor("#6908D6"),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                          Text(
                            "$_personCounter",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                _personCounter++;
                              });
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color:
                                      _hexToColor("#6908D6").withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: _hexToColor("#6908D6")),
                              )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Tip",
                          style: TextStyle(
                              color: _hexToColor("#6908D6"), fontSize: 17)),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                            "\$ ${calculateTotalTip(_billAmount, _personCounter, _tipPercentage)}",
                            style: TextStyle(
                                color: _hexToColor("#6908D6"), fontSize: 17)),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("$_tipPercentage%",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 17)),
                      Slider(
                          min: 0,
                          max: 100,
                          //divisions: 10,
                          activeColor: _hexToColor("#6908D6"),
                          inactiveColor: Colors.black,
                          value: _tipPercentage.toDouble(),
                          onChanged: (double value) {
                            setState(() {
                              _tipPercentage = value.round();
                            });
                          })
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  calculateTotalPerPerson(double billAmount, int splitBy, int percentage) {
    double totalPerPerson = 0.0;
    totalPerPerson =
        (calculateTotalTip(billAmount, splitBy, percentage) + billAmount) /
            splitBy;
    return totalPerPerson.toStringAsFixed(2);
  }

  calculateTotalTip(double billAmount, int splitBy, int percentage) {
    double totalTip = 0.0;
    if (billAmount >= 0 ||
        billAmount != null ||
        billAmount.toString().isNotEmpty) {
      totalTip = (billAmount * percentage) / 100;
    }
    return double.parse(totalTip.toStringAsFixed(2));
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _currentQuestionIndex = 0;
  List questionBank = [
    Question.name("The capital of Libya is Benghazi.", false),
    Question.name(
        "Albert Einstein was awarded the Nobel Prize in Physics.", false),
    Question.name("Baby koalas are called joeys.", false),
    Question.name(
        "Gone with the Wind takes place in Savannah, Georgia.", false),
    Question.name(
        "Brazil is the only country in the Americas whose official language is Portuguese.",
        false),
    Question.name("The first name of Kramer in Seinfeld is Cosmo.", false),
    Question.name("The American Civil War ended in 1776.", false),
    Question.name("A right triangle can never be equilateral.", false),
    Question.name("The Ford Edsel was named after Henry Ford’s father.", false),
    Question.name(
        "The Bill of Rights contains 10 amendments to the Constitution.",
        false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
            child: Text(
          "Quiz App",
          style: TextStyle(fontSize: 25, color: Colors.white),
        )),
      ),
      body: Builder(
        builder: (BuildContext context) => Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Image.asset(
                "images/flag.png",
                width: 250,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1.5, color: Colors.blueGrey.shade400)),
                  child: Column(
                    children: <Widget>[
                      Center(
                          child: Text(
                        "Question",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                            child: Text(
                                questionBank[_currentQuestionIndex]
                                    .questionText,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white))),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () => _prevQuestion(),
                    child: Icon(Icons.arrow_back),
                  ),
                  RaisedButton(
                    onPressed: () => _checkAnswer(true, context),
                    child: Text("True"),
                  ),
                  RaisedButton(
                    onPressed: () => _checkAnswer(false, context),
                    child: Text("False"),
                  ),
                  RaisedButton(
                    onPressed: () => _nextQuestion(),
                    child: Icon(Icons.arrow_forward),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _checkAnswer(bool selectedOption, BuildContext context) {
    if (selectedOption == questionBank[_currentQuestionIndex].isCorrect) {
      Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Correct Answer"),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 1)));
      _updateQuestion();
    } else {
      Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("Wrong Answer"),
          backgroundColor: Colors.redAccent,
          duration: Duration(seconds: 1)));
      _updateQuestion();
    }
  }

  _prevQuestion() {
    setState(() {
      _currentQuestionIndex = (_currentQuestionIndex - 1) % questionBank.length;
    });
  }

  _nextQuestion() {
    _updateQuestion();
  }

  void _updateQuestion() {
    setState(() {
      _currentQuestionIndex = (_currentQuestionIndex + 1) % questionBank.length;
    });
  }
}

class MovieListView extends StatelessWidget {
  final List<Movie> movieName = Movie.getMovies();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Movies List"),
          backgroundColor: Colors.blueGrey.shade900),
      backgroundColor: Colors.blueGrey.shade900,
      body: ListView.builder(
          itemCount: movieName.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: <Widget>[
                movieCard(context, movieName[index]),
                Positioned(
                    top: 15,
                    left: 10,
                    width: 90,
                    height: 90,
                    child: movieImage(movieName[index].images[0])),
              ],
            );
          }),
    );
  }

  Widget movieCard(BuildContext context, Movie movieName) {
    return InkWell(
      child: Container(
          margin: EdgeInsets.only(left: 50),
          width: MediaQuery.of(context).size.width,
          height: 120,
          child: Card(
            color: Colors.black54,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 60, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                          child: Text(
                        movieName.title,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                      Text("IMDB Rating: ${movieName.imdbRating} / 10",
                          style: TextStyle(fontSize: 15, color: Colors.white70))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Released: ${movieName.released}",
                          style: TextStyle(color: Colors.white70)),
                      Text(movieName.runtime,
                          style: TextStyle(color: Colors.white70)),
                      Text(movieName.rated,
                          style: TextStyle(color: Colors.white70))
                    ],
                  )
                ],
              ),
            ),
          )),
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MovieListViewDetails(
                      movieName: movieName,
                    )))
      },
    );
  }

  Widget movieImage(String imageUrl) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(
                  imageUrl ?? 'https://picsum.photos/seed/picsum/200/300'),
              fit: BoxFit.fill)),
    );
  }
}

class MovieListViewDetails extends StatelessWidget {
  final Movie movieName;

  const MovieListViewDetails({Key key, this.movieName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Details")),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: ListView(
          children: <Widget>[
            MovieDetailsThumbnail(thumbnail: movieName.images[0]),
            MovieDetailsHeaderWithPoster(movie: movieName,),
            HorizontalLine(),
            MovieCast(movie: movieName),
            HorizontalLine(),
            MovieExtraPosters(posters: movieName.images,)
          ],
        ));
  }
}



Color _hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}
