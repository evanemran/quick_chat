import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_chat/presentation/color_manager.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "0",
                // border: InputBorder.none,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
                ),
                filled: true,
                fillColor: ColorManager.white,
              ),
              onChanged: (value) {
                if(value.length==1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headline6,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "0",
                // border: InputBorder.none,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
                ),
                filled: true,
                fillColor: ColorManager.white,
              ),
              onChanged: (value) {
                if(value.length==1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headline6,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "0",
                // border: InputBorder.none,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
                ),
                filled: true,
                fillColor: ColorManager.white,
              ),
              onChanged: (value) {
                if(value.length==1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headline6,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
          SizedBox(
            height: 68,
            width: 64,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "0",
                  // border: InputBorder.none,
                border: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
                ),
                filled: true,
                fillColor: ColorManager.white,
              ),
              onChanged: (value) {
                if(value.length==1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              style: Theme.of(context).textTheme.headline6,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
          ),
        ],
      ),
    );
  }
}
