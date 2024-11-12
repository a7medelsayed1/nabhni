import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class Buttonwidget extends StatelessWidget {
   Buttonwidget({
    super.key,required this.text,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ElevatedButton(
          
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Mycolors.mybuttoncolor),
              foregroundColor: Mycolors.mybuttoncolor,
              fixedSize: Size(R.sW(context,350), R.sH(context, 57)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              backgroundColor: Mycolors.buttontext),
          onPressed: () {},
          child: Text(
            text,
            style: Textutils.logcyan,
          )),
    );
  }
}