import 'package:flutter/material.dart';
import 'package:theforum/pages/auth/sign_up.dart';
import 'package:theforum/pages/intro_page.dart';
import 'package:theforum/pages/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}