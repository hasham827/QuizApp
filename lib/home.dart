import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import "catogery.dart";
import 'page.dart';
class HomePage extends StatelessWidget {
  // List<String> category = ["General Knowledge","Books","Programming","Islamic"];
 // categories.;
  // List<>>
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( backgroundColor: Colors.purple,
          title: Text('Quiz App',style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)),
            leading: GestureDetector(
                onTap: () {
               },
                child: Icon(
                  Icons.menu_book,  // add custom icons also
                )
            )
        ),
        body: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperOne(),
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.purpleAccent),
                height: 250,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 25.0),
              child: Text(
                "Select Your Category ",style: TextStyle(fontSize:25, color: Colors.white, fontWeight:FontWeight.bold)
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 250.0),
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                // Generate 100 widgets that display their index in the List.
                children: List.generate(4, (index) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.purpleAccent,
                              shape: BoxShape.circle
                          ),
                          height: 130,
                          width: 150.0,
                          padding: EdgeInsets.all(5.0),
                          child: FlatButton(
                            onPressed: () => {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => HomePage1(),
                            )
                            ),
                            },
                            padding: EdgeInsets.all(12.0),
                            child: Column( // Replace with a Row for horizontal icon + text
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(categories[index].icon,color: Colors.white,size: 50,),
                                SizedBox(height: 15,),

                                Text(categories[index].name,style: TextStyle(fontSize:14,color: Colors.white ,fontWeight:FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ));
  }
}

