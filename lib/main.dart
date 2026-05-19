import 'package:flutter/material.dart';
import 'package:meme_switch/meme_switch.dart';

import 'grey_cloud_custom_painter.dart';
import 'white_cloud__custom_painter.dart';

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

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  bool value = false;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomPaint(
                size: Size(100, 100),
                painter: WhiteCloudPainter(),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomPaint(
                size: Size(100, 100),
                painter: GreyCloudPainter(),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 400,
              height: 400,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Switch(
                  value: widget.value,
                    onChanged: (value){
                      setState(() {
                        widget.value = !widget.value;
                      });
                    },
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            MemeSwitch(),
          ],
        ),
      ),
    );
  }
}
