import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class CustomGraybutton extends StatelessWidget {
   CustomGraybutton({super.key,required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(R.sW(context,350), R.sH(context, 57)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              backgroundColor: Mycolors.buttongrey),
          onPressed: () =>context.pushName(Routes.login),
          child: Center(
            
            child: Row(
              children: [
                const SizedBox(width: 40,),
                 IconButton(icon: Image.asset(Images.google),onPressed: (){},),
                Text(
                  text,
                  style: Textutils.loginsuptitle,
                ),
              ],
            ),
          )),
    );
  }
}