import 'package:flutter/material.dart';
import '../utilities/colors.dart';
import '../utilities/dimensions.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Function onchanged;
  // ignore: use_key_in_widget_constructors
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchanged(),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: Dimensions.font18,
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.height5),
          borderSide: const BorderSide(
            color: AppColors.royalOrange,
          ),
        ),
        contentPadding: EdgeInsets.all(Dimensions.height10),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimensions.height5),
        ),
      ),
    );
  }
}
