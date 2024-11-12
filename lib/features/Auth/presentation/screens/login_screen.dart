import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_graybutton.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_textfield.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/onboarding/presentation/widgets/butonwidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  "تسجيل الدخول",
                  style: Textutils.logintitle,
                )),
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  "مرحبا بعودتك مره اخري في نبهني",
                  style: Textutils.loginsuptitle,
                )),
            SizedBox(
              height: R.sH(context, 40),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  "البريد الاليكتروني",
                  style: Textutils.fieldlabel,
                )),
            CustomTextfield(
              label: "hello@example.com",
            ),
            Align(
                alignment: Alignment.topRight,
                child: Text(
                  "الرقم السري",
                  style: Textutils.fieldlabel,
                )),
            CustomTextfield(
              label: "**************",
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "هل نسيت كلمه السر؟",
                      style: Textutils.fieldlabel,
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "الاستمرار في تسجيل الدخول",
                  style: Textutils.fieldlabel,
                ),
                Checkbox(value: false, onChanged: (bool) {},),
              ],
            ),
            Custombutton(text: "تسجيل الدخول",route: ()=> context.pushName(Routes.loginsuccess),),
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
            Center(
              child: TextButton(
                      onPressed: () =>context.pushName(Routes.signup),
                      child: Text(
                        "انشاء حساب جديد",
                        style: Textutils.logcyan,
                      )),
            )
            
          ],
        ),
      )),
    );
  }
}
