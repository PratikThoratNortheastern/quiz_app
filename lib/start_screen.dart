import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      home: Scaffold(
        backgroundColor: Colors.deepPurple[400],
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(45, 14, 99, 1),
                Color.fromRGBO(201, 176, 248, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(height: 80),
              const Text(
                'Learn Flutter the fun way',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                  onPressed: () {
                    debugPrint("Button Tap Received");
                  },
                  child: const Text(
                    "Start",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
