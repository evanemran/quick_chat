import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_chat/packages/chatapp/pages/home_page.dart';
import 'package:quick_chat/presentation/color_manager.dart';

import '../widgets/otp_form.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Verification Code", style: TextStyle(color: ColorManager.white, fontSize: 22, fontWeight: FontWeight.bold),),
            const SizedBox(height: 8,),

            Text("We have sent the Verification Code to ", style: TextStyle(color: ColorManager.white, fontSize: 16, fontWeight: FontWeight.normal),),
            const SizedBox(height: 8,),

            Row(
              children: [
                Text("015******77", style: TextStyle(color: ColorManager.white, fontSize: 18, fontWeight: FontWeight.bold),),
                const SizedBox(width: 10,),
                TextButton(onPressed: () {}, child: const Text("Change Phone Number?", style: TextStyle(color: Colors.black),))
              ],
            ),
            const SizedBox(height: 8,),

            const Row(
              children: [
                Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Resend code after", style: TextStyle(color: Colors.grey),),
                    SizedBox(width: 4,),
                    Text("01:36", style: TextStyle(color: Colors.black),),
                  ],
                ))
              ],
            ),
            const SizedBox(height: 16,),
            OtpForm()
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorManager.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Resend")),
            SizedBox(width: 8,),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
            }, child: Text("Confirm")),
          ],
        ),
      ),
    );
  }
}
