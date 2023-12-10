// lib/main.dart
import 'package:clone_bank_app/screen/home_screen.dart';
import 'package:clone_bank_app/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:clone_bank_app/widget/container_banks.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bank_Clone_App',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey[200],
            primarySwatch: Colors.grey,
            textTheme: TextTheme(
              // 텍스트 테마 정의
              headline1: TextStyle(color: Colors.red), // 제목 1 스타일 정의
              bodyText1: TextStyle(color: Colors.black), // 본문 텍스트 스타일 정의
            ),
            buttonTheme: ButtonThemeData(buttonColor: Colors.amber)),
        home: DefaultTabController(
            length: 5,
            child:
                Scaffold(body: HomeScreen(), bottomNavigationBar: Bottom())));
  }
}
