import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAnPYjyuVKIFnjNh42wKcvuQyFRZO6u8vA",
            authDomain: "tipar-d4358.firebaseapp.com",
            projectId: "tipar-d4358",
            storageBucket: "tipar-d4358.appspot.com",
            messagingSenderId: "1088797004347",
            appId: "1:1088797004347:web:00844048ea498676ab021e",
            measurementId: "G-702VS2SFST"));
  } else {
    await Firebase.initializeApp();
  }
}
