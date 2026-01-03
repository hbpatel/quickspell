import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCLnRVekMUV2hqIKial2wlOHzMpqlA1_2E",
            authDomain: "quick-spell.firebaseapp.com",
            projectId: "quick-spell",
            storageBucket: "quick-spell.firebasestorage.app",
            messagingSenderId: "995487189191",
            appId: "1:995487189191:web:2e38595ca49ee5803516e2",
            measurementId: "G-P266R5WH76"));
  } else {
    await Firebase.initializeApp();
  }
}
