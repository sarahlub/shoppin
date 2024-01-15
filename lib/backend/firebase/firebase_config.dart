import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyASiZJii1_TEbF6pPArCREY546ENAD7iW4",
            authDomain: "newfishery-66769.firebaseapp.com",
            projectId: "newfishery-66769",
            storageBucket: "newfishery-66769.appspot.com",
            messagingSenderId: "282103345773",
            appId: "1:282103345773:web:e034400e8388ab94098564"));
  } else {
    await Firebase.initializeApp();
  }
}
