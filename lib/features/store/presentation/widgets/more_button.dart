import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class MoreButton extends StatelessWidget {
   MoreButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.h,
    required this.w,
    required this.r,

  });
String text;
double h,w,r;
Function()onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(text,style: Textutils.logcyan,),style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(R.sR(context, r))
      ),
      side: BorderSide(
        color: Mycolors.primarycolor,
        
      ),
      fixedSize: Size(R.sW(context,w), R.sH(context, h)),
    
      
    ),);
  }
}