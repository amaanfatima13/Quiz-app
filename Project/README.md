 Quiz App - Flutter & Firebase
A professional Quiz Application developed using Flutter and Google Firebase Firestore. This project demonstrates real-time data fetching and interactive UI management, making it ideal for learning and assessment purposes.
 Key Features
* Real-time Database: Questions are fetched live from Cloud Firestore.
* Category Selection: Multiple subjects including Web Development, Operating Systems, Graphic Design, and PDC.
* Live Scoring: Instant feedback (Correct/Wrong) and final score display.
* Responsive UI: Clean design with smooth navigation between screens.
* Expandable: Easily add new quizzes or categories in Firestore.
 Project Structure
lib/                  # Dart source code files
├─ main.dart           # Entry point of the app
├─ start_screen.dart   # Welcome screen with start button
├─ subject_screen.dart # Subject selection screen
├─ quiz_screen.dart    # Main quiz logic and Firebase integration
images/               # App assets like quiz.png
pubspec.yaml           # Project dependencies and configuration
 Technologies Used
* Frontend: Flutter SDK (Dart)
* Backend: Firebase Firestore (NoSQL Database)
* Navigation: MaterialPageRoute for screen transitions
* Other Packages: http, cloud_firestore, firebase_core


 Installation
1. Clone the repository:
git clone https://github.com/amaanfatima13/quiz-app.git
2. Navigate to the project directory:
cd quiz-app
3. Install dependencies:
flutter pub get
4. Configure Firebase:
   - Add your google-services.json (Android) or GoogleService-Info.plist (iOS) in the respective folder.
   - Make sure Firebase Firestore is enabled with the correct rules.
5. Run the app:
flutter run
 Usage
* Launch the app.
* Select a subject.
* Answer the questions.
* View your final score and review correct/wrong answers.
 Why Firebase?
* Real-time data fetching
* Easy setup and maintenance
* Secure and scalable database
* Eliminates the need for local storage like SQLite or Hive


 Notes
* No external API keys are required.
* App can be extended easily with more subjects or quizzes by adding data to Firestore.
🔗 License
This project is licensed under the MIT License.
