import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  Random random = Random();
  int number1 = 0;
  int number2 = 0;
  int correctCount = 0;
  int incorrectCount = 0;
  int attempts = 0;
  final int maxAttempts = 10;
  String resultMessage = '';

  @override
  void initState() {
    super.initState();
    generateNumbers();
  }

  void generateNumbers() {
    setState(() {
      do {
        number1 = random.nextInt(100) + 1;
        number2 = random.nextInt(100) + 1;
      } while (number1 == number2);
    });
  }

  void checkNumber(int buttonNumber) {
    setState(() {
      attempts++;
      if ((buttonNumber == 1 && number1 > number2) ||
          (buttonNumber == 2 && number2 > number1)) {
        correctCount++;
      } else {
        incorrectCount++;
      }
      if (attempts >= maxAttempts) {
        resultMessage =
            'Game Over! Correct: $correctCount, Incorrect: $incorrectCount';
      } else {
        generateNumbers();
      }
    });
  }

  void restartGame() {
    setState(() {
      correctCount = 0;
      incorrectCount = 0;
      attempts = 0;
      resultMessage = '';
      generateNumbers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Generator Game'),
        backgroundColor: Colors.amber[100],
        centerTitle: true,
      ),
      body: Center(
        
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Number Generator Game',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(100, 100),
                      textStyle: const TextStyle(fontSize: 24),
                    ),
                    onPressed:
                        attempts >= maxAttempts ? null : () => checkNumber(1),
                    child: Text('$number1'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(100, 100),
                      textStyle: const TextStyle(fontSize: 24),
                    ),
                    onPressed:
                        attempts >= maxAttempts ? null : () => checkNumber(2),
                    child: Text('$number2'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Game Stats',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Text('Correct answers: $correctCount',
                  style: const TextStyle(fontSize: 18)),
              Text('Incorrect answers: $incorrectCount',
                  style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size(200, 50),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                onPressed: restartGame,
                child: const Text('Restart Game'),
              ),
              const SizedBox(height: 20),
              Text(resultMessage,
                  style: const TextStyle(fontSize: 18, color: Colors.red)),
            ],
          ),
        ),
      ),
    );
  }
}
