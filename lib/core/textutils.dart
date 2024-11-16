import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';

class Textutils {

  static TextStyle get logcyan => const TextStyle(
  fontSize:18,
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
   static TextStyle get logintitle => const TextStyle(
  fontSize: 26,
  color: Mycolors.titlecolor,
  fontWeight:FontWeight.w700,
  );
   static TextStyle get loginsuptitle => const TextStyle(
  fontSize: 16,
  color: Mycolors.suptitlecolor,
  fontWeight:FontWeight.w700,
  );
  static TextStyle get fieldlabel => const TextStyle(
  fontSize: 14,
  color: Mycolors.titlecolor,
  fontWeight:FontWeight.w700,
  );
   static TextStyle get forgotpass => const TextStyle(
  fontSize: 12,
  color: Mycolors.suptitlecolor,
  fontWeight:FontWeight.w400,
  );

}