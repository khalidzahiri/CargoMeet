import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDQR3uBodyHWo9-IEs5WGI6JxiH62inkAw",
            authDomain: "cargomeet-191ca.firebaseapp.com",
            projectId: "cargomeet-191ca",
            storageBucket: "cargomeet-191ca.appspot.com",
            messagingSenderId: "118020253923",
            appId: "1:118020253923:web:99bae294290a99fa61bdd6"));
  } else {
    await Firebase.initializeApp();
  }
}
