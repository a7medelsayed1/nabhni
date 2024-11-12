import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.only(top: R.sH(context,120)),
        child: Center(
          child: Column(children: [
            Text("تم تسجيل الدخول بنجاح",style: Textutils.logintitle,),
            Text("يمكنك الآن التجول في خدمات التطبيق بكل سهولة. ",style: Textutils.loginsuptitle,),
            Padding(
              padding:  EdgeInsets.only(top: R.sH(context, 35),bottom: R.sH(context, 150)),
              child: SvgPicture.asset(Images.onboard1),
            ),
            Custombutton(text: "الصفحه الرئيسيه", route:()=> context.pushName(Routes.location) )
          
          ],),
        ),
      ),
    );
  }
}