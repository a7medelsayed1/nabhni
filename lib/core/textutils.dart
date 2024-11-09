import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';

class Textutils {

  static TextStyle get boardingtitle => const TextStyle(
  fontSize: 24,
  color: Mycolors.mybuttoncolor,
  fontWeight:FontWeight.w700,
  );
  static TextStyle get boardingbutton => const TextStyle(
  fontSize: 16,
  color: Mycolors.buttontext,
  fontWeight:FontWeight.w700,
  );

  static TextStyle get boardingbody => const TextStyle(
  fontSize: 16,
  color: Colors.black,
  fontWeight:FontWeight.w700,
  );

  static TextStyle get homebody => const TextStyle(
  fontSize: 16,
  color: Colors.black,
  fontWeight:FontWeight.w700,
  );


}