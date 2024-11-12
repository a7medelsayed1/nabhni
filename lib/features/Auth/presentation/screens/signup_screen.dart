import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_graybutton.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_textfield.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(
                Images.logo,
                height: R.sH(context, 44),
                width: R.sW(context, 125),
              ),
            ),
            SizedBox(
              height: R.sH(context, 40),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  "إنشاء حساب ",
                  style: Textutils.logintitle,
                )),
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  "أدخل بياناتك من أجل تسجيل الدخول",
                  style: Textutils.loginsuptitle,
                )),
            SizedBox(
              height: R.sH(context, 40),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Text("الاسم الاول"
                  ,style: Textutils.fieldlabel,
                )),
            CustomTextfield(
              label: "الاسم الاول",
            ),
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  "الاسم الاخير",
                  style: Textutils.fieldlabel,
                )),
            CustomTextfield(
              label: "الاسم الاخير",
            ),
            Padding(
              padding:  EdgeInsets.only(top: R.sH(context, 90)),
              child: Custombutton(
                text: "التالي",
                route: () => context.pushName(Routes.loginsuccess),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "او عن طريق",
                style: Textutils.loginsuptitle,
              ),
            ),
            CustomGraybutton(
              text: 'التسجيل باستخدام رقم الهاتف',
            ),
            CustomGraybutton(text: "التسجيل باستخدام حساب جوجل"),
           
          ],
        ),
      )),
    );
  }
}
