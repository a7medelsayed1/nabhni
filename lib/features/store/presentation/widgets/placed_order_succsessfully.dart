import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:nabhni/features/store/presentation/widgets/more_button.dart';

class PlacedOrderWidget extends StatelessWidget {
  const PlacedOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('تم تسجيل طلبك بنجاح',style: Textutils.cyan32bold,)),
          Center(child: Text('''تابع حالة طلبك من خلال صفحة 'متابعة الطلبات'.''',style: Textutils.title18bold,textAlign: TextAlign.center,)),
          SizedBox(height: R.sH(context, 20),),
          SvgPicture.asset(Images.delivery,height: R.sH(context, 313),width: R.sW(context, 313),),
          SizedBox(height: R.sH(context, 100),),
          Custombutton(text: 'الرئيسية', route: ()=>context.pushName(Routes.home)),
          SizedBox(height: R.sH(context, 20),),
          MoreButton(text: 'متابعة الطلب', onPressed: ()=>context.pushName(Routes.ordersfollow),w: 353,h: 55,r: 12,)
        ],
      ),
    );
  }
}