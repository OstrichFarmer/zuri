import 'package:flutter/material.dart';
import '../utilities/colors.dart';
import '../utilities/dimensions.dart';

class CustomPasswordTextBox extends StatefulWidget {
  final Function(String) onchanged;
  final String hintText;
  const CustomPasswordTextBox(this.onchanged, this.hintText);

  @override
  State<CustomPasswordTextBox> createState() => _CustomPasswordTextBoxState();
}

class _CustomPasswordTextBoxState extends State<CustomPasswordTextBox> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableSuggestions: false,
      autocorrect: false,
      obscureText: obscure ? true : false,
      onChanged: widget.onchanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        suffixIcon: IconButton(
          icon: obscure
              ? Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                )
              : Icon(
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
          borderSide: BorderSide(
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
