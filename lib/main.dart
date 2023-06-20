import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
import 'start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;
  bool _quizStarted = false; // Track if the quiz has started

  static const List<Map<String, dynamic>> _questions = [
    {
      "question":
          " Who is the main character and protagonist of \"The Godfather\"?",
      "answers": [
        "Michael Corleone",
        "Sonny Corleone",
        "Fredo Corleone",
        "Vito Corleone",
        "Tom Hagen"
      ],
      "correctAns": "Vito Corleone",
    },
    {
      "question":
          "If you watch the Marvel movies in chronological order, which movie would you watch first??",
      "answers": [
        "Iron Man",
        "Captain America: The First Avenger",
        " Doctor Strange",
        "Captain Marvel",
        "The Incredible Hulk"
      ],
      "correctAns": "Captain America: The First Avenger",
    },
    {
      "question":
          "In Black Panther, Wakanda is so technologically advanced because of which type of metal??",
      "answers": ["Uranium", "Titanium", "Silver", "Gold", "Vibranium"],
      "correctAns": "Vibranium",
    },
    {
      "question": "The Lion King: What's the name of Simba's nasty uncle?",
      "answers": ["Scar", "Jafar", "Gaston", "Shere Khan"],
      "correctAns": "Scar",
    },
    {
      "question":
          "What was the name of the college where Rancho and Chatur studied?  ",
      "answers": [
        "Imperial College of Engineering",
        "Indian College of Engineering",
        "Indian Institutes of Technology",
        "Imperial Centre of Engineering"
      ],
      "correctAns": "Imperial College of Engineering",
    },
  ];

  void _startQuiz() {
    setState(() {
      _quizStarted = true;
    });
  }

  void _answerQuestion(int res) {
    setState(() {
      totalScore += res;
      _questionIndex = (_questionIndex + 1);
    });
  }

  void _resetQuiz() {
    setState(() {
      totalScore = 0;
      _questionIndex = 0;
      _quizStarted = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz app",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("UE213009"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: _quizStarted
            ? FloatingActionButton(
                child: const Text(
                  "Reset Quiz",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  _resetQuiz();
                },
              )
            : null,
        body: Container(
          child: _quizStarted
              ? _questionIndex >= _questions.length
                  ? Result(totalScore)
                  : Quiz(
                      answerQuestion: _answerQuestion,
                      questionIndex: _questionIndex,
                      questions: _questions,
                    )
              : StartScreen(
                  startQuiz: _startQuiz,
                ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
