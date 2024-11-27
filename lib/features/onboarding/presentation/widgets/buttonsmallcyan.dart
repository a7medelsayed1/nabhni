import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class Buttonsmallcyan extends StatelessWidget {
   Buttonsmallcyan({super.key,required this.text,required this.route});
 String text;
 VoidCallback route;
  @override
  Widget build(BuildContext context) {
   
    return ElevatedButton(
          
          style: ElevatedButton.styleFrom(
            
              fixedSize: Size(R.sW(context,110), R.sH(context, 44)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              backgroundColor: Mycolors.primarycolor),
          onPressed: route,
          child: Text(
            text,
            style: Textutils.boardingbutton,
          ));
  }
}