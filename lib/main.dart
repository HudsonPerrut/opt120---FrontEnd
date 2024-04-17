import 'package:flutter/material.dart';
//import 'package:flutter_application_1/models/user_model.dart';
import 'user.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      
      title: 'Desenvolvimento Móvel',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 49, 184, 154)),
        useMaterial3: true,
      ),
      home: const User(),
    );
  }
}