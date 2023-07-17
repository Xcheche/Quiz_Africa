import 'package:flutter/material.dart';
import 'result_page.dart';
import 'color_page.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int score = 0;
  int currentQuestionIndex = 0;

  List<Map<String, Object>> questions = [
    {
      'question': 'What is the capital city of Egypt?',
      'answers': ['Cairo', 'Nairobi', 'Accra', 'Lagos'],
      'correctAnswer': 'Cairo',
    },
    {
      'question': 'Which African country has the largest population?',
      'answers': ['Nigeria', 'Ethiopia', 'Egypt', 'South Africa'],
      'correctAnswer': 'Nigeria',
    },
    {
      'question': 'Which country is Mount Kilimanjaro located in?',
      'answers': ['Kenya', 'Tanzania', 'Uganda', 'Rwanda'],
      'correctAnswer': 'Tanzania',
    },
    {
      'question': 'Which river is the longest in Africa?',
      'answers': ['Nile', 'Congo', 'Niger', 'Zambezi'],
      'correctAnswer': 'Nile',
    },
    {
      'question': 'Which African country is known as the "Rainbow Nation"?',
      'answers': ['South Africa', 'Kenya', 'Ghana', 'Morocco'],
      'correctAnswer': 'South Africa',
    },
    {
      'question': 'Which African country is famous for its pyramids?',
      'answers': ['Egypt', 'Algeria', 'Sudan', 'Ethiopia'],
      'correctAnswer': 'Egypt',
    },
  ];

  void checkAnswer(String selectedAnswer) {
    if (selectedAnswer == questions[currentQuestionIndex]['correctAnswer']) {
      score++;
    }

    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ResultPage(score: score, totalQuestions: questions.length),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text('Africa Quiz'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    questions[currentQuestionIndex]['question'] as String,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    ...(questions[currentQuestionIndex]['answers']
                            as List<String>)
                        .map((answer) {
                      return ElevatedButton(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(answer),
                        ),
                        onPressed: () => checkAnswer(answer),
                      );
                    }).toList(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
