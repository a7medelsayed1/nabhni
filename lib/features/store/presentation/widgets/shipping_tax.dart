import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class ShipingTax extends StatelessWidget {
  const ShipingTax({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: R.sH(context, 12),bottom: R.sH(context, 12)),
      padding: EdgeInsets.all(R.sP(context, 8)),
      height: R.sH(context, 67),
      width: R.sW(context, 353),
      decoration: BoxDecoration(
        color: Mycolors.mediumcyan,
        borderRadius: BorderRadius.circular(R.sR(context, 12))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('رسوم ثابتة',style: Textutils.bodybold16,),
              Text('تكاليف محددة مسبقًا وغير قابلة للتغيير.',style: Textutils.fontcolor14w400,)
            ],
          ),
          Text('+ 120 ج.م. ',style: Textutils.title22bold,)
        ],
      ),
    );
  }
}