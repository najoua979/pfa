import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app/screens/signin_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: "AIzaSyB61j9HLfgPL_zZEe5oUfOaxMXI92Zmkck", 
    appId: "1:1006683748205:android:eaa40672b31b1ef1f38c64", 
    messagingSenderId: "",
     projectId: "flutter-23660")
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}