import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class SupportWidget extends StatelessWidget {
   SupportWidget({
    super.key,
    required this.image,
    required this.text,
    this.ontap
  });
  String image,text;
  GestureTapCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap ,
      child: Container(
        margin: EdgeInsets.only(bottom: R.sH(context, 20)),
        padding: EdgeInsets.only(top: R.sH(context, 21),bottom: R.sH(context, 21),right: R.sW(context, 12),left: R.sW(context, 4)),
        height: R.sH(context, 70),
        width: R.sW(context, 353),
        decoration: BoxDecoration(
          color: Mycolors.mediumcyan,
          borderRadius: BorderRadius.circular(R.sR(context, 6))
        ),
        child: Row(
          children: [
            Image.asset(image,height: 22,width: 22,),
            Padding(
              padding:  EdgeInsets.only(right: R.sW(context, 4)),
              child: Text(text,style: Textutils.bodybold16,),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios,weight: 400,)
          ],
        ),
      ),
    );
  }
}
