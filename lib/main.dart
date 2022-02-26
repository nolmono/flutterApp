// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answersQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var question = [
      "What is your favorite color",
      "What is your favorite animal"
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Question(
                question[questionIndex],
              ),
              RaisedButton(
                child: Text("Answer1"),
                onPressed: answersQuestion,
              ),
              RaisedButton(
                child: Text("Answer1"),
                onPressed: () => print("i love u"),
              ),
              RaisedButton(
                child: Text("Answer1"),
                onPressed: () {
                  print("hello anmswer3");
                },
              ),
              RaisedButton(
                child: Text("Answer1"),
                onPressed: answersQuestion,
              ),
            ],
          )),
    );
  }
}
