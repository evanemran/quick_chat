import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_chat/packages/chatapp/pages/otp_page.dart';
import 'package:quick_chat/presentation/color_manager.dart';

import '../chatapp/widgets/app_button.dart';
import '../chatapp/widgets/input_field.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Quick Chat", style: TextStyle(color: ColorManager.white, fontSize: 32, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Text("Enter Your Mobile Number", style: TextStyle(color: ColorManager.white, fontSize: 18, fontWeight: FontWeight.normal),),
            const SizedBox(height: 20,),
            const InputField(hint: "Enter Mobile", prefix: Icons.phone, isPassword: false,),
            const SizedBox(height: 20,),
            Text("You will receive a OTP to verify next", style: TextStyle(color: ColorManager.white, fontSize: 18, fontWeight: FontWeight.normal),),
            const SizedBox(height: 20,),
            isLoading ? const CircularProgressIndicator() : AppButton(
              onClicked: () {
                setState(() {
                  isLoading = true;
                });
                Future.delayed(const Duration(seconds: 2), () {
                  setState(() {
                    isLoading = false;
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const OtpPage()));
                  });
                });
              },
            )
            //InputField(hint: "Enter Pass", prefix: Icons.phone, isPassword: false,),
          ],
        ),
      ),
    );
  }
}
