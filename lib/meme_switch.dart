import 'package:flutter/material.dart';
import 'package:meme_switch/custom_painter/grey_cloud_custom_painter.dart';
import 'package:meme_switch/custom_painter/white_cloud__custom_painter.dart';
import 'package:meme_switch/widget_assets/widget_colors.dart';
import 'package:meme_switch/widget_assets/widget_icons.dart';

import 'inner_shadow_widget/inner_shadow_widget.dart';

class MemeSwitch extends StatefulWidget {
  const MemeSwitch({
    super.key,
    this.duration = const Duration(milliseconds: 600),
    this.curve = Curves.elasticOut,
    required this.onTap,
  });

  final Duration duration;
  final Curve curve;
  final Function(bool value) onTap;

  @override
  State<MemeSwitch> createState() => _MemeSwitchState();
}

class _MemeSwitchState extends State<MemeSwitch> {
  bool selected = false;


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(100)),
      child: InnerShadow(
        blur: 3,
        offset: Offset(0, 10),
        color: WidgetColors.black38Color,
        child: AnimatedContainer(
          width: 350,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            color: selected
                ? WidgetColors.dayColor
                : WidgetColors.nightColor,
          ),
          duration: widget.duration,
          curve: widget.curve,
          child: Stack(
            children: [
              /// Облако серого цвета с анимацией ухода на заднем фоне кнопки
              AnimatedPositioned(
                left: 0,
                top: selected ? 250 : 90,
                duration: widget.duration,
                curve: widget.curve,
                child: CustomPaint(painter: GreyCloudPainter()),
              ),

              /// Облако белого цвета с анимацией ухода на заднем фоне кнопки
              AnimatedPositioned(
                left: 0,
                top: selected ? 250 : 120,
                duration: widget.duration,
                curve: widget.curve,
                child: CustomPaint(painter: WhiteCloudPainter()),
              ),

              /// звезды на заднем фоне кнопки с анимацией ухода
              AnimatedPositioned(
                left: 0,
                top: selected ? 0 : 250,
                duration: widget.duration,
                curve: widget.curve,
                child: SizedBox(
                  height: 150,
                  width: 220,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15,
                        left: 70,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 22,
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 140,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 8,
                        ),
                      ),
                      Positioned(
                        top: 35,
                        left: 190,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 22,
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 30,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 10,
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 80,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 10,
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 75,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 10,
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 40,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 8,
                        ),
                      ),
                      Positioned(
                        top: 115,
                        left: 33,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 8,
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 130,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 8,
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 170,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 12,
                        ),
                      ),
                      Positioned(
                        top: 110,
                        left: 145,
                        child: Icon(
                          WidgetIcons.star,
                          color: WidgetColors.whiteColor,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              AnimatedPositioned(
                left: selected ? 80 : -130,
                top: -125,
                duration: widget.duration,
                curve: widget.curve,
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
                              onTap: () {
                                setState(() {
                                  selected = !selected;
                                  widget.onTap(selected);
                                });
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                child: InnerShadow(
                                  blur: 2,
                                  offset: Offset(-3, -3),
                                  color: WidgetColors.black38Color,
                                  child: InnerShadow(
                                    blur: 2,
                                    offset: Offset(3, 3),
                                    color: WidgetColors.whiteColor,
                                    child: Stack(
                                      children: [
                                        /// Круглый желтый контейнер солнца
                                        Container(
                                          height: 100,
                                          width: 100,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(100),
                                            ),
                                            color: WidgetColors.sunColor,
                                          ),
                                        ),
                                        /// Круглый серый контейнер луны
                                        AnimatedPositioned(
                                          left: selected ? 0 : 100, //100
                                          duration: widget.duration,
                                          curve: widget.curve,
                                          child: Container(
                                            height: 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(100),
                                              ),
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
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(100),
                                                      ),
                                                      color: WidgetColors
                                                          .craterMoonColor,
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
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(100),
                                                      ),
                                                      color: WidgetColors
                                                          .craterMoonColor,
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
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(100),
                                                      ),
                                                      color: WidgetColors
                                                          .craterMoonColor,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
