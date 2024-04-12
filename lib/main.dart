import 'package:counter_test/pages/home_page.dart';
import 'package:auth_flutter/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
    apiKey: 'AIzaSyCaAHv1IImbrKjs9W4vcWV2bYjFihHaOHA',
    appId: '1:819752428967:android:bfeb7b2d260270c1610282',
    messagingSenderId: '819752428967',
    projectId: 'authentication-e4eb6',
    authDomain: 'authflutter-e4eb6.firebaseapp.com',
    storageBucket: 'authentication-e4eb6.appspot.com',
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoginPage(),
    );
  }
}
