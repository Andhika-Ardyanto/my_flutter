import 'package:flutter/material.dart';
import 'RandomWordScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Selamat Datang',
        home: RandomWord(),
        debugShowCheckedModeBanner: false);
  }
}
