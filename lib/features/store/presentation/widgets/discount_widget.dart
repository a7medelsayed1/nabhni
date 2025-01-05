import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class DiscountWidget extends StatelessWidget {
   DiscountWidget({
    super.key,
    required this.discount
  });
  bool discount;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: R.sW(context, 353),
      padding: EdgeInsets.symmetric(vertical: R.sH(context, 16),horizontal: R.sW(context, 8)),
      margin: EdgeInsets.only(bottom: R.sH(context, 20),top: R.sH(context, 12)),
      decoration: BoxDecoration(
        color: Mycolors.mediumcyan,
        borderRadius: BorderRadius.circular(R.sR(context, 12))
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('المجموع الفرعي',style: Textutils.suptitlebold16,),
              Text('20.000 ج.م.',style: Textutils.title22bold.copyWith(fontWeight: FontWeight.w400),)
            ],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('خدمات الشحن',style: Textutils.suptitlebold16),
              Text('+ 120 ج.م. ',style: Textutils.title22bold.copyWith(fontWeight: FontWeight.w400),)
            ],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('ضريبة',style: Textutils.suptitlebold16),
              Text('0 ج.م. ',style: Textutils.title22bold.copyWith(fontWeight: FontWeight.w400),)
            ],
          ),Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('المجموع الكلي',style: Textutils.suptitlebold16),
              Text('20.120 ج.م.',style: Textutils.title22bold,)
            ],
          ),
          discount?Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: R.sH(context, 10),),
              Text('هل لديك كوبون خصم ؟',style: Textutils.bodybold16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                       SizedBox(
                        width: R.sW(context, 200),
                        child: TextFormField(
                          style: Textutils.suptitlebold16,
                          decoration: InputDecoration(
                            
                            hintText: 'كوبون خصم',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(R.sR(context, 8))
                            )
                          ),
                        ),
                       ),
                       SizedBox(
                        height: R.sH(context, 50),
                        width: R.sW(context, 105),
                        child: Custombutton(text: "تطبيق", route: (){}))
                ],
              )
            ],
          ):SizedBox()
        ],
      ),
    );
  }
}

