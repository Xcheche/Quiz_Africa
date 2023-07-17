import 'package:flutter/material.dart';
import 'quiz_page.dart';

class ColorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown, // Change to your desired background color
      body: Center(
        child: ElevatedButton(
          child: Text('Start Quiz'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuizPage()),
            );
          },
        ),
      ),
    );
  }
}
