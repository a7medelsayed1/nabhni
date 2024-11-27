import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class Buttonwidget extends StatelessWidget {
   Buttonwidget({
    super.key,required this.text,required this.route
  });
  String text;
  VoidCallback route;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ElevatedButton(
          
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Mycolors.primarycolor),
              foregroundColor: Mycolors.primarycolor,
              fixedSize: Size(R.sW(context,110), R.sH(context, 44)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              backgroundColor: Mycolors.buttontext),
          onPressed: route,
          child: Text(
            text,
            style: Textutils.logcyan,
          )),
    );
  }
}