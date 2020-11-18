import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:quizstar/result.dart';
import 'quiz_brain.dart';
QuizBrain quizbrain =new QuizBrain();

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar( backgroundColor: Colors.purple,
            title: Text('Quiz Page',style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)),
            elevation: 0,
          ),
          body:  QuizPage(),

        )
    );
  }
}
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}
class _QuizPageState extends State<QuizPage> {
  // List<String> category = ["General Knowledge","Books","Programming","Islamic"];
  // categories.;
  // List<>>
  List<Icon> scoreKeeper = [];
  void checkAnswer(int userPickedAnswer) {
    int correctAnswer = quizbrain.getCorrectAnswer();
    setState(() {
      if (quizbrain.isFinished() == true) {

        quizbrain.reset();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizbrain.nextQuestion();
      }
    });
  }
  List<Widget> get_options1(){
    List<String> option_data = quizbrain.get_options();
    List<Widget> temp=[];
    for(int i=0; i<option_data.length/2;i++){
      temp.add(
          Container(child: FlatButton(
            color: Colors.purpleAccent,
            textColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.purpleAccent,
            onPressed: (){
              checkAnswer(quizbrain.getCorrectAnswer());
            },
            child: Text(
              option_data[i],
              style: TextStyle(fontSize: 20.0),
            ),
          )
          )
      );
    }
    return temp;
  }
  List<Widget> get_options2(){
    List<String> option_data = quizbrain.get_options();
    List<Widget> temp=[];
    for(int i=2; i<option_data.length;i++){
      temp.add(
          Container(child: FlatButton(
            color: Colors.purpleAccent,
            textColor: Colors.white,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.purpleAccent,
            onPressed: () {
              checkAnswer(quizbrain.getCorrectAnswer());
            },
            child: Text(
              option_data[i],
              style: TextStyle(fontSize: 20.0),
            ),
          )
          )
      );
    }
    return temp;
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            decoration:
            BoxDecoration(color: Colors.purpleAccent),
            height: 250,
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[

              Container(
                  child: FlatButton(
                    color: Colors.purple,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePage2(),
                      )
                      );
                    },
                    child: Text(
                      "Stop",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  )

              ),
              Container(
                margin: EdgeInsets.only(top: 25.0),
                child:TweenAnimationBuilder<Duration>(
                    duration: Duration(seconds: 10),
                    tween: Tween(begin: Duration(seconds: 10), end: Duration.zero),
                    onEnd: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePage2(),
                      )
                      );
                    },
                    builder: (BuildContext context, Duration value, Widget child) {
                      final minutes = value.inMinutes;
                      final seconds = value.inSeconds % 60;
                      return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text('$minutes:$seconds',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)));
                    }
                ),
                //Text(
                //"Select Your Category ",style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)
                //),
              ),]
        ),
        Container(
          margin: EdgeInsets.only(top: 190.0),
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisSpacing: 0,
            crossAxisCount: 1,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(1, (index) {
              return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      Container
                        (
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle
                        ),
                        height: 100,
                        width: 300,margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(quizbrain.getQuestionText(),
                          style: TextStyle( color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

                      ),
                      Padding(padding: EdgeInsets.only(top: 80)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:get_options1()

                      ),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:get_options2()
                      ),
                    ],
                  )

              );
            }
            ),
          ),
        ),
      ],
    );
  }
}

