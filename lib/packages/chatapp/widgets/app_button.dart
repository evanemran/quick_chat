import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_chat/presentation/color_manager.dart';

class AppButton extends StatefulWidget {
  const AppButton({Key? key, required this.onClicked}) : super(key: key);

  final Function() onClicked;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ElevatedButton(
          onPressed: () {
            widget.onClicked.call();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Send OTP",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(width: 8,),
              Icon(Icons.arrow_forward_ios_rounded, color: ColorManager.white, size: 18,)
            ],
          )),
    );
  }
}
