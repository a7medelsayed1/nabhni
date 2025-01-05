import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:nabhni/features/store/presentation/widgets/discount_widget.dart';
enum SingingCharacter { lafayette, jefferson }

class PlaceOrderWidget extends StatefulWidget {
   PlaceOrderWidget({super.key});

  @override
  State<PlaceOrderWidget> createState() => _PlaceOrderWidgetState();
}

class _PlaceOrderWidgetState extends State<PlaceOrderWidget> {
  SingingCharacter? _method = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: R.sW(context, 20),right:R.sW(context, 20),bottom: R.sH(context, 80) ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('طريقه الدفع',style: Textutils.title22bold,),
          SizedBox(
            height: 350,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(R.sP(context, 8)),

                  margin: EdgeInsets.only(top: R.sH(context, 16)),
                  height: R.sH(context, 98),
                  decoration: BoxDecoration(
                    color: Mycolors.mediumcyan,
                    borderRadius: BorderRadius.circular(R.sR(context, 8))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Expanded(
                       child: ListTile(
                                 title:  Text('الدفع عند الاستلام',style: Textutils.bodybold16,),
                                 leading: Radio<SingingCharacter>(
                                  activeColor: Colors.black,
                                   value: SingingCharacter.lafayette,
                                   groupValue: _method,
                                   onChanged: (SingingCharacter? value) {
                                     setState(() {
                                       _method = value;
                                     });
                                   },
                                 ),
                               ),
                     ),
                    Image.asset(Images.card,height: R.sH(context, 74))

                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(R.sP(context, 8)),
                  margin: EdgeInsets.only(top: R.sH(context, 16)),
                  height: R.sH(context, 98),
                  decoration: BoxDecoration(
                    color: Mycolors.mediumcyan,
                    borderRadius: BorderRadius.circular(R.sR(context, 8))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                    Expanded(
                      child: ListTile(
                                title:  Text('بطاقة الائتمان',style: Textutils.bodybold16),
                                leading: Radio<SingingCharacter>(
                                  activeColor: Colors.black,
                                  value: SingingCharacter.jefferson,
                                  groupValue: _method,
                                  onChanged: (SingingCharacter? value) {
                                    setState(() {
                                      _method = value;
                                    });
                                  },
                                ),
                              ),
                    ),
                    Image.asset(Images.cash,height: R.sH(context, 74))
                  ],),
                ),
                
              ],
            ),
          ),
          Text('تفاصيل الطلب',style: Textutils.title22bold,),
        DiscountWidget(discount: false),
        Expanded(child: SizedBox()),
        Custombutton(text: 'تنفيذ الطلب', route: ()=>context.pushName(Routes.placedorder))
      
        ],
      ),
    );
  }
}