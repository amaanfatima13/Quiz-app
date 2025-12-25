import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// Stateful because score & question change hotay hain
class QuizScreen extends StatefulWidget {

  // Selected subject
  final String subject;

  // Constructor
  QuizScreen({required this.subject});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  // Score variable
  int score = 0;

  // Current question index
  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subject),
      ),

      // StreamBuilder Firebase se data lene ke liye
      body: StreamBuilder<QuerySnapshot>(

        // 🔴 API CALL + DATABASE ACCESS
        stream: FirebaseFirestore.instance
            .collection(widget.subject) // Subject collection
            .snapshots(), // Real-time API response

        builder: (context, snapshot) {

          // Jab data load ho raha ho
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          // Database se questions list
          var questions = snapshot.data!.docs;

          // Last question ke baad score screen
          if (questionIndex >= questions.length) {
            return Center(
              child: Text(
                "Your Score: $score",
                style: TextStyle(fontSize: 22),
              ),
            );
          }

          return Padding(
            padding: EdgeInsets.all(16),

            child: Column(
              children: [

                // Question show
                Text(
                  questions[questionIndex]['question'],
                  style: TextStyle(fontSize: 20),
                ),

                SizedBox(height: 20),

                // Options ko buttons me convert karna
                ...questions[questionIndex]['options']
                    .map<Widget>((option) {

                  return ElevatedButton(

                    child: Text(option),

                    onPressed: () {

                      // Answer check
                      if (option ==
                          questions[questionIndex]['answer']) {

                        score++;

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Correct")),
                        );
                      } else {

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Wrong")),
                        );
                      }

                      // Next question
                      setState(() {
                        questionIndex++;
                      });
                    },
                  );
                }).toList(),
              ],
            ),
          );
        },
      ),
    );
  }
}
