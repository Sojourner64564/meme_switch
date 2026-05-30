import 'package:flutter/material.dart';
import 'package:meme_switch/meme_switch.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: Center(
          child: MemeSwitch(
            duration: Duration(milliseconds: 650),
            onTap: (bool value){
              print(value ? 'Если $value, то сейчас ночь' : 'А если $value то день');
            },
          ),
        ),
      ),
    );
  }
}


