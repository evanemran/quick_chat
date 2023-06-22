import 'package:flutter/material.dart';
import 'package:progress_indicators/progress_indicators.dart';

import 'dart:math' as math;

import 'package:quick_chat/packages/chatapp/widgets/triangle_widget.dart';
import 'package:quick_chat/presentation/color_manager.dart';

class ReceivedMessage extends StatelessWidget {
  const ReceivedMessage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    final messageTextGroup = Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // CircleAvatar(
            //   radius: 12,
            //   backgroundColor: Colors.transparent,
            //   child: Center(
            //     child: Image.asset(
            //       "assets/foxy.png",
            //       width: 20,
            //       height: 20,
            //       // color: Colors.transparent,
            //     ),
            //   ),
            // ),
            const SizedBox(
              width: 8,
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: CustomPaint(
                painter: Triangle(ColorManager.primary),
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: ColorManager.primary,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*AnimatedTextKit(animatedTexts: [
                      TyperAnimatedText(message.toString().replaceAll("\n", ""),
                        textStyle: const TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 16),)
                    ],
                      isRepeatingAnimation: false,
                      totalRepeatCount: 1,
                      displayFullTextOnTap: true,),*/
                    Text(
                      message.toString().replaceAll("\n", ""),
                      // message.toString().substring(message.lastIndexOf("\n")),
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));

    return Padding(
      padding: const EdgeInsets.only(right: 50.0, left: 8, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 30),
          Visibility(
              visible: message == "Getting response...",
              child: Wrap(
                children: [
                  JumpingDotsProgressIndicator(
                    fontSize: 30.0,
                    color: ColorManager.primary,
                  )
                ],
              )),
          Visibility(
              visible: message != "Getting response...",
              child: messageTextGroup),
        ],
      ),
    );
  }
}