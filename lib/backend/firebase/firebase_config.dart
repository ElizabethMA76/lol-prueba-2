import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyANrewtX7tWZRbiqYTv_xBsgvvzUrDWDGU",
            authDomain: "league-of-legend-77ff3.firebaseapp.com",
            projectId: "league-of-legend-77ff3",
            storageBucket: "league-of-legend-77ff3.firebasestorage.app",
            messagingSenderId: "801717289491",
            appId: "1:801717289491:web:49b492f8f815ab18d2f5e6"));
  } else {
    await Firebase.initializeApp();
  }
}
