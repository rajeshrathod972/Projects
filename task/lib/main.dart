import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task/firebase_options.dart';
import 'package:task/screen/done.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:task/screen/mycart.dart';
import 'package:task/screen/otp.dart';
import 'package:task/screen/splash.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // title: 'Flutter Demo',
        // theme: ThemeData(
        //   primarySwatch: Colors.green,
        // ),
        home: splash());
  }
}
