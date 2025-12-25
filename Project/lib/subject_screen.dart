import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class SubjectScreen extends StatelessWidget {

  // Subjects list
  final List<String> subjects = [
    "Web Development",
    "Operating System",
    "Graphic Designing",
    "Parallel and Distributed Computing",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Select Subject"),
      ),

      // List view for subjects
      body: ListView.builder(
        itemCount: subjects.length,

        itemBuilder: (context, index) {

          return ListTile(
            title: Text(subjects[index]),
            trailing: Icon(Icons.arrow_forward),

            // Subject select karne par
            onTap: () {

              // Quiz screen par jana with subject
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      QuizScreen(subject: subjects[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
