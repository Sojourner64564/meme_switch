import 'package:flutter/material.dart';
import 'package:meme_switch/meme_switch.dart';
import 'package:meme_switch/widget_assets/widget_icons.dart';


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
            Icon(
                WidgetIcons.star,
            size: 90,
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
