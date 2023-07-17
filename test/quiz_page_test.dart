import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quiz_africa/quiz_page.dart';

void main() {
  testWidgets('Quiz App Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: QuizPage(),
    ));

    // Verify the initial question
    expect(find.text('What is the capital city of Egypt?'), findsOneWidget);

    // Tap on the correct answer
    await tester.tap(find.text('Cairo'));
    await tester.pump();

    // Verify the next question after selecting the answer
    expect(find.text('Which African country has the largest population?'),
        findsOneWidget);

    // Tap on the incorrect answer
    await tester.tap(find.text('Ethiopia'));
    await tester.pump();

    // Verify the result page after answering all questions
    expect(find.text('Congratulations! You passed.'), findsOneWidget);
    expect(find.text('Your Score: 1/2'), findsOneWidget);
  });
}
