import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class LocationPerScreen extends StatelessWidget {
  const LocationPerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      Padding(
        padding:  EdgeInsets.only(top: R.sH(context,120),right: R.sW(context, 16),left: R.sW(context, 16)),
        child: Center(
          child: Column(children: [
            Text("السماح بالوصول إلى الموقع",style: Textutils.logintitle,),
            Text("اسمح لنا بمعرفة موقعك لخدمتك بشكل أفضل.",style: Textutils.suptitlebold16,),
            Padding(
              padding:  EdgeInsets.only(top: R.sH(context, 35),bottom: R.sH(context, 15)),
              child: SvgPicture.asset(Images.location),
            ),
            Text("من خلال تحديد موقعك، يمكنك الوصول إلى ميزات مثل إشعارات انقطاع الخدمة وتحديد أقرب مراكز الصيانة.",style: Textutils.suptitlebold16,),
            Padding(
              padding:  EdgeInsets.only(top: R.sH(context, 100)),
              child: Custombutton(text: "السماح بالوصول", route:()=> context.pushName(Routes.home) ),
            ),
            Center(
              child: TextButton(
                      onPressed: () =>context.pushName(Routes.home),
                      child: Text(
                        "ليس الآن",
                        style: Textutils.logcyan,
                      )),
            )
          
          ],),
        ),
      ),
    ],),);
  }
}