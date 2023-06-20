import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  const Result(this.score, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Congratulations!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Quiz Complete',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 24),
          Image.asset('assets/images/celebrate.jpg', width: 250),
          const SizedBox(height: 24),
          Text(
            'Your Score: $score / 10',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
