import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class CustomTransbutton extends StatelessWidget {
   CustomTransbutton({super.key,required this.route,required this.text});
 VoidCallback route;
 String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: const BorderSide(color: Mycolors.mybuttoncolor,),
            fixedSize: Size(R.sW(context,350), R.sH(context, 57)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(R.sR(context, 12))),
            backgroundColor: Mycolors.buttontrans),
        onPressed: route,
        child:  Row(
              children: [
                 SizedBox(width: R.sW(context, 37),),
                 IconButton(icon: Image.asset(Images.google),onPressed: (){},),
                Text(
                  text,
                  style: Textutils.logcyan,
                ),
              ],
            ),);
  }
}