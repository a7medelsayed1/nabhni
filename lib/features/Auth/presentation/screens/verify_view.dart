import 'package:flutter/material.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Auth/presentation/widgets/timer.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';

class VerifyView extends StatefulWidget {
   VerifyView({super.key});

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  bool completed=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: 'كود التأكيد',
        leadingWidget: BackButton(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: R.sH(context, R.H(context) / 90),
              ),
              Text(
                'التحقق من رمز OTP',
                style: Textutils.logintitle,
              ),
              Text(
               'لقد أرسلنا رمز OTP إلى رقم هاتفك 201010227401+  برجاءإدخال رمز ال OTP أدناه للتحقق',
                style: Textutils.suptitlebold16,
              ),
              SizedBox(
                height: R.sH(context, R.H(context) / 85),
              ),
              Center(
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Pinput(
                    onCompleted: (value) {
                    
                      print(value);
                    },
                    submittedPinTheme: PinTheme(
                    height: R.sH(context, 55),
                      width: R.sW(context, 55),
                      textStyle: Textutils.logintitle.copyWith(fontWeight: FontWeight.w400),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black
                        ),
                        // color: Mycolors.mybuttoncolor.withOpacity(.3),
                        color: Color(0xffEEF6F7),
                        borderRadius: BorderRadius.circular(18)
                      )
                    ),
                    defaultPinTheme: PinTheme(
                      height: R.sH(context, 55),
                      width: R.sW(context, 55),
                      textStyle: Textutils.logintitle.copyWith(fontWeight: FontWeight.w400),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(18)
                      )
                    ),
                    length: 5,
                    showCursor: true,
                    onChanged: (val) {},
                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  ),
                ),
              ),
              SizedBox(
                height: R.sH(context, R.H(context) / 85),
              ),
              completed==true? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text('لم تستلم الرمز ؟ '),
                      TimerWidget(onEnd: () {},),
                      TextButton(onPressed: (){}, child: Text("إعادة إرسال OTP ")),
                    
                    ],
                  ),
                    Row(children: [
                      Text('رقم الهاتف غير صحيح ؟'),
                      TextButton(onPressed: ()=>context.pop(), child: Text("تغيير رقم الهاتف ")),
                      ],)
                ],
              ):TimerWidget(onEnd: () {
              setState(() {
                completed=true;
              });
              },),
              SizedBox(
                height: R.sH(context, R.H(context) / 85),
              ),

               Custombutton(
                text: "ارسال رمز التحقق",
                route: () {},
              )
              // 10.ph,
            ],
          ),
        ),
      ),
    );
  }
}
