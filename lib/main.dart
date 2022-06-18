import 'package:blood_donation/screens/choose_account_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       // used by the build method of the State. Fields in a Widget subclass are
        primarySwatch: Colors.blue,
      ),
      home: const ChooseAccountScreen(),
    );
  }
}

