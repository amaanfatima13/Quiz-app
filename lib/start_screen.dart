import 'package:flutter/material.dart';
import 'subject_screen.dart';

// Start screen stateless hai kyun ke data change nahi hota
class StartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text("Quiz App"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(

          // Content ko center me rakhne ke liye
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // 🔹 Quiz illustration image
            Image.asset(
              'images/quiz.png',
              height: 250, // image size
            ),

            SizedBox(height: 30),

            // 🔹 Start Quiz button
            ElevatedButton(

              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),

              child: Text(
                "Start Quiz",
                style: TextStyle(fontSize: 18),
              ),

              // Button click par subject screen open hogi
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SubjectScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
