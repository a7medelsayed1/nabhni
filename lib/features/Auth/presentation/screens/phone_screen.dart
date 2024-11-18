import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_transbutton.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class PhoneNumScreen extends StatefulWidget {
  PhoneNumScreen({super.key});

  @override
  State<PhoneNumScreen> createState() => _PhoneNumScreenState();
}

class _PhoneNumScreenState extends State<PhoneNumScreen> {
  TextEditingController controller = TextEditingController();
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0, top: 30,left: 20),
        child: SingleChildScrollView(
          child: Column(children: [
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
                  "قم بادخال رقم الهاتف من أجل انشاء حساب جديد",
                  style: Textutils.suptitlebold16,
                )),

            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "رقم الهاتف",
                    style: Textutils.fieldlabel,
                  )),
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 16),
                    height: R.sH(context, 52),
                    width: R.sW(context, 250),
                    child: TextFormField(
                      controller: controller,
                      validator: (value) {
                        if (value == null) {
                          return 'please enter your mobile phone';
                        } else if (value.length <= 11) {
                          return 'please enter valid phone number';
                        } else {
                          return 'valid';
                        }
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "1000000000",
                          hintTextDirection: TextDirection.ltr,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(R.sR(context, 6)))),
                    )),
                Container(
                  height: R.sH(context, 52),
                  width: R.sW(context, 69),
                  decoration: BoxDecoration(
                      border: Border.all(color: Mycolors.suptitlecolor),
                      borderRadius: BorderRadius.circular(R.sR(context, 6))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "20+",
                        style: Textutils.bodybold16,
                      ),
                      SizedBox(
                        width: R.sW(context, 4),
                      ),
                      Image.asset(Images.flag)
                    ],
                  ),
                )
              ],
            ),
            Row(children: [
              Checkbox(
                value: check,
                onChanged: (x) {
                  check = !check;
                  setState(() {});
                },
              ),
              Text(
                "الاستمرار في تسجيل الدخول",
                style: Textutils.fieldlabel,
              )
            ]),
             Padding(
                    padding:  EdgeInsets.only(top: R.sH(context,209.0)),
                    child: Custombutton(text: "ارسال رمز التحقق", route:()=>context.pushName(Routes.login) ),
                  ),
                  Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "او عن طريق",
                style: Textutils.suptitlebold16,
              ),
            ),
            CustomTransbutton(text: "التسجيل باستخدام حساب جوجل",route: () => context.pushName(Routes.loginsuccess),),
            
          ]),
        ),
      ),
    );
  }
}
