import 'package:flutter/material.dart';

final kHeadingStyling = TextStyle(
  fontSize: Dimensions.height30,
  fontWeight: FontWeight.bold,
);

final kHeading2styling = TextStyle(
  fontSize: Dimensions.height16,
);

final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return const OutlineInputBorder(
    //borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Color(0xfffc8d4e)),
  );
}
