import 'package:flutter/material.dart';

import '../utilities/colors.dart';
import '../utilities/dimensions.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() ontap;
  const CustomButton({
    Key? key,
    required this.title,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
            primary: AppColors.royalOrange,
            minimumSize: Size(Dimensions.height343, Dimensions.height60),
            side: const BorderSide(color: AppColors.royalOrange),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.height25))),
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontSize: Dimensions.height25,
              fontWeight: FontWeight.w600),
        ));
  }
}
