import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_textfield.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_transbutton.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class SignupSecond extends StatefulWidget {
  const SignupSecond({super.key});

  @override
  State<SignupSecond> createState() => _SignupSecondState();
}

class _SignupSecondState extends State<SignupSecond> {
    bool check=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     IconButton(icon:Icon(Icons.arrow_back) ,onPressed: (){},),
                  
              //     SvgPicture.asset(Images.logo), 
              //   ],
              // ),
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
                    style: Textutils.suptitlebold16,
                  )),
                  
               
                Padding(
                  padding: const EdgeInsets.only(top:32.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "البريد الاليكتروني",
                        style: Textutils.fontcolor14bold,
                      )),
                ),
                CustomTextfield(
                  label: "hello@example.com",
                ),
                Padding(
                  padding:  EdgeInsets.only(top:R.sH(context, 16)),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "الرقم السري",
                        style: Textutils.fontcolor14bold,
                      )),
                ),
                CustomTextfield(
                  iconpass: true,
                  label: "**************",
                ),
                 Padding(
                  padding:  EdgeInsets.only(top:R.sH(context, 16)),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "تاكيد الرقم السري",
                        style: Textutils.fontcolor14bold,
                      )),
                ),
                CustomTextfield(
                  iconpass: true,
                  label: "**************",
                ),
                Row(
                children: [
                   Checkbox(
                
                    value:check,
                    onChanged: (x) {check=!check;
                    setState(() {
                      
                    });
                    },
                  ),
                  Text(
                    "الاستمرار في تسجيل الدخول",
                    style: Textutils.fontcolor14bold,
                  )]),
                  Padding(
                    padding:  EdgeInsets.only(top: R.sH(context,30.0)),
                    child: Custombutton(text: "التالي", route:()=>context.pushName(Routes.login) ),
                  ),
                  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "او عن طريق",
                style: Textutils.suptitlebold16,
              ),
            ),
            CustomTransbutton(text: "التسجيل باستخدام حساب جوجل",route: () => context.pushName(Routes.loginsuccess),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("لديك حساب؟"),
                TextButton(
                    onPressed: () => context.pushName(Routes.login),
                    child: Text(
                      "اضغط هنا لتسجيل الدخول",
                      style: Textutils.logcyan,
                    )),
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}
