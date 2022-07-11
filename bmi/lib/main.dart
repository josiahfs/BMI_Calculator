// ignore_for_file: prefer_const_constructors

import 'package:bmi/home.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyBMIApp());
}

class MyBMIApp extends StatelessWidget {
  const MyBMIApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('BMI Calculator'),
      ),
      child: HomeScreen(),
    );
  }
}
