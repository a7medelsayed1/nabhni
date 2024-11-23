import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Auth/presentation/widgets/timer.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';

class VerifyView extends StatelessWidget {
   VerifyView({super.key});
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
                'يرجى ادخال رمز التحقق المرسل على رقم هاتفك',
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
                      completed=true;
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
              TimerWidget(onEnd: () {
                
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
