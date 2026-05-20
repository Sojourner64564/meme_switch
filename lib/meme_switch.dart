import 'package:flutter/material.dart';
import 'package:meme_switch/grey_cloud_custom_painter.dart';
import 'package:meme_switch/white_cloud__custom_painter.dart';
import 'package:meme_switch/widget_assets/widget_colors.dart';

class MemeSwitch extends StatefulWidget {
  MemeSwitch({super.key});

  bool selected = false;
  final Duration duration = Duration(milliseconds: 150);

  @override
  State<MemeSwitch> createState() => _MemeSwitchState();
}

class _MemeSwitchState extends State<MemeSwitch> {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      child: AnimatedContainer(
        width: 350,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: widget.selected ? WidgetColors.dayColor : WidgetColors.nightColor,
        ),
        duration: widget.duration,
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [

            AnimatedPositioned(
              left: 0,
              top: widget.selected ? 250 : 90,
              duration: widget.duration,
              child: CustomPaint(
                painter: GreyCloudPainter(),
              ),
            ),
            AnimatedPositioned(
              left: 0,
              top: widget.selected ? 250 : 120,
              duration: widget.duration,
              child: CustomPaint(
                painter: WhiteCloudPainter(),
              ),
            ),
      
            AnimatedPositioned(
              left: widget.selected ? 80 : -130,
              top: -125,
              duration: widget.duration,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(300)),
                  color: WidgetColors.white12Color,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(300)),
                      color: WidgetColors.white12Color,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(300)),
                          color: WidgetColors.white12Color,
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                widget.selected = !widget.selected;
                              });
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(100)),
                                      color: WidgetColors.sunColor,
                                     /* boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1,
                                          blurRadius: 10,
                                        ),
                                      ],*/
                                    ),
                                  ),
                                  AnimatedPositioned(
                                    left: widget.selected ? 0 : 100, //100
                                    duration: widget.duration,
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(100)),
                                        color: WidgetColors.moonColor,
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 45,
                                            top: 15,
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                                color: WidgetColors.craterMoonColor,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 15,
                                            top: 40,
                                            child: Container(
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                                color: WidgetColors.craterMoonColor,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 65,
                                            top: 60,
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(100)),
                                                color: WidgetColors.craterMoonColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}