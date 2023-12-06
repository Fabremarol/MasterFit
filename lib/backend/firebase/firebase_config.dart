import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD2rUPoe96SKmJ7fkArY9Hp-GsD8bC0YdY",
            authDomain: "gimanasiomasterfit.firebaseapp.com",
            projectId: "gimanasiomasterfit",
            storageBucket: "gimanasiomasterfit.appspot.com",
            messagingSenderId: "927436911538",
            appId: "1:927436911538:web:7aaa6f1dce25ca809deaab",
            measurementId: "G-NKMG67DFXH"));
  } else {
    await Firebase.initializeApp();
  }
}
