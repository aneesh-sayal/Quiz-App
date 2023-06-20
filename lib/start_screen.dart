import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback startQuiz; // Callback function to start the quiz

  const StartScreen({required this.startQuiz, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purple,
            Color.fromARGB(255, 140, 75, 151),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/movie2.jpg', width: 250),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Welcome to Movie Quiz!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Diphylleia",
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton.icon(
                onPressed: startQuiz, // Call the startQuiz callback function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue.shade900,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text(
                  'Start Quiz',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
