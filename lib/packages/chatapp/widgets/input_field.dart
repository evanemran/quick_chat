import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../presentation/color_manager.dart';

class InputField extends StatefulWidget {
  const InputField({Key? key, required this.hint, required this.prefix, required this.isPassword}) : super(key: key);
  
  final String hint;
  final IconData prefix;
  final bool isPassword;
  

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.maxFinite, // Set the desired width of the TextField
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorManager.white,
          prefixIcon: Icon(widget.prefix),
          prefixIconColor: ColorManager.primary,
          suffixIcon: widget.isPassword ? const Icon(Icons.remove_red_eye) : null,
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.light),
            borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorManager.light),
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: widget.hint,
          hintStyle: const TextStyle(color: Colors.grey)
        ),
      ),
    );
  }
}
