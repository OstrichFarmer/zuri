import 'package:flutter/material.dart';
import '../utilities/colors.dart';
import '../utilities/dimensions.dart';

class CustomPasswordTextBox extends StatefulWidget {
  final Function(String) onchanged;
  final String hintText;
  //final TextEditingController controller;

  // ignore: use_key_in_widget_constructors
  const CustomPasswordTextBox({
    required this.onchanged,
    required this.hintText,
    // required this.controller,
  });

  @override
  State<CustomPasswordTextBox> createState() => _CustomPasswordTextBoxState();
}

class _CustomPasswordTextBoxState extends State<CustomPasswordTextBox> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //  controller: widget.controller,
      enableSuggestions: false,
      autocorrect: false,
      obscureText: obscure ? true : false,
      onChanged: widget.onchanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        suffixIcon: IconButton(
          icon: obscure
              ? const Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                )
              : const Icon(
                  Icons.visibility,
                  color: AppColors.royalOrange,
                ),
          onPressed: () {
            setState(() {
              obscure = !obscure;
            });
          },
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: Dimensions.font18,
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.height10),
          borderSide: const BorderSide(
            color: AppColors.royalOrange,
          ),
        ),
        contentPadding: EdgeInsets.all(Dimensions.height10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.height10),
        ),
      ),
    );
  }
}
