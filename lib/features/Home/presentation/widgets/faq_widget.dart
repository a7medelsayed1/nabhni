import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class FaqWidget extends StatelessWidget {
   FaqWidget({
    super.key,
    required this.text
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: R.sH(context, 64),
      width: R.sW(context, 353),
      padding: EdgeInsets.all(R.sP(context, 8)),
      margin: EdgeInsets.only(top: R.sH(context, 12)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(R.sR(context, 6)),
          color: Mycolors.mediumcyan),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(
           text,
            softWrap: true,
            overflow: TextOverflow.visible,
            style: Textutils.bodybold16.copyWith(fontSize: R.F(context, 17)),
          )),
          Row(
            children: [
              SizedBox(width: R.sW(context, 8),),
              Icon(Icons.arrow_forward_ios,),
            ],
          )
        ],
      ),
    );
  }
}
