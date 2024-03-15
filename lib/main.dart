import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_todo/pages/home_page.dart';
import 'package:flutter_firebase_todo/pages/login_page.dart';
import 'package:flutter_firebase_todo/pages/sign_up_page.dart';
import 'package:flutter_firebase_todo/pages/splash_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_firebase_todo/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase Todo App',
      routes: {
        '/': (context) => SplashScreen(
          // This will show either the LoginPage, or Home Page based on user auth
          child: LoginPage(),
        ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
