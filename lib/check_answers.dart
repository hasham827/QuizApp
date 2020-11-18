import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'question.dart';
import 'home.dart';
class AnswersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.purple,
            title: Text('Check Answers'),
            leading: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomePage(),
                  )
                  );
                },
                child: Icon(
                  Icons.arrow_back, // add custom icons also
                )
            )
        ),

        body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                children: <Widget>[
            Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)
        ),
      child: ListTile(
        title: Text('One-line dense ListTile'),
        dense: true,
      ),
    ),
    SizedBox(height: 10.0),
    Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0)
    ),
    child: ListTile(
    contentPadding: const EdgeInsets.all(16.0),
    title: Text("Score" ),
    dense: true,
    ),
    ),
    SizedBox(height: 10.0),
    Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0)
    ),
    child: ListTile(
    contentPadding: const EdgeInsets.all(16.0),
    title: Text("Correct Answers"),
    dense: true,
    ),
    ),
    SizedBox(height: 10.0),
    Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0)
    ),
    child: ListTile(
    contentPadding: const EdgeInsets.all(16.0),
    title: Text("Incorrect Answers"),
    dense: true,
    ),
    ),
    ])
    ),
    );
  }
}