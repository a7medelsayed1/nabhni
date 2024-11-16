import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class Custombutton extends StatelessWidget {
   Custombutton({
    super.key,required this.text,required this.route
  });
  String text;
  VoidCallback route;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(R.sW(context,350), R.sH(context, 57)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(R.sR(context, 12))),
            backgroundColor: Mycolors.mybuttoncolor),
        onPressed: route,
        child: Text(
          text,
          style: Textutils.boardingbutton,
        ));
  }
}