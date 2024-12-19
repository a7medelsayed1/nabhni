import 'package:flutter/material.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class CardButton extends StatelessWidget {
   CardButton({super.key,required this.buttontext,required this.onTap});
  String buttontext;
 VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text(buttontext,style: Textutils.bodybold16,),
    style: ElevatedButton.styleFrom(
      fixedSize: Size(R.sW(context, 110), R.sH(context, 20)),
      padding: EdgeInsets.symmetric(horizontal: R.sW(context, 19),vertical: R.sH(context, 9)),
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(R.sR(context, 6))
      ),
      backgroundColor: Colors.white,
      
    ),
    
    );
  }
}