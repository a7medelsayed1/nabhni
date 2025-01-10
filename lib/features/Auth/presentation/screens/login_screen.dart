import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_graybutton.dart';
import 'package:nabhni/features/common/widgets/custom_textfield.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_transbutton.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/show_snack_bar.dart';
import 'package:nabhni/features/onboarding/presentation/widgets/butonwidget.dart';
import 'package:nabhni/generated/intl/messages_en.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool check=false;
  String? email,password;
  bool isloading=false;
GlobalKey<FormState> formkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      
      inAsyncCall: isloading,
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
          child: Form(
            key: formkey,
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
                      style: Textutils.suptitlebold16,
                    )),
                SizedBox(
                  height: R.sH(context, 40),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "البريد الاليكتروني",
                      style: Textutils.fontcolor14bold,
                    )),
                CustomTextfield(
                  onChanged: (data){
                    email=data;
                  },
                  label: "hello@example.com",
                ),
                Padding(
                  padding:  EdgeInsets.only(top:R.sH(context, 24)),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "الرقم السري",
                        style: Textutils.fontcolor14bold,
                      )),
                ),
                CustomTextfield(
                   onChanged: (data){
                    password=data;
                  },
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
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () =>context.pushName(Routes.phone),
                        child: Text(
                          "هل نسيت كلمه السر؟",
                          style: Textutils.forgotpass,
                        )),
                  ],
                ),
               
                Padding(
                  padding:  EdgeInsets.only(top: R.sH(context, 75)),
                  child: Custombutton(
                    text: "تسجيل الدخول",
                    route: () async {
                      if (formkey.currentState!.validate()) {
                        isloading=true;
                        setState(() {});
                        try  {
  await loginaccount();
  context.pushName(Routes.loginsuccess);
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
showsnackbar(context,'هذا المستحدم غير موجود');  
} 
else if (e.code == 'wrong-password') {
showsnackbar(context,'كلمة المرور غير صحيحة');  
  }else{
    showsnackbar(context,"حدث خطأ ما ,برجاء المحاوله مره اخري بطريقة صحيحة");  

  }
  
} catch(e){
  showsnackbar(context,"حدث خطأ ما ,برجاء المحاوله مره اخري بطريقة صحيحة");
}

                      }
                      else{

                      }
                      isloading=false;
                      setState(() {
                        
                      });
                      // context.pushName(Routes.loginsuccess);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "او عن طريق",
                    style: Textutils.suptitlebold16,
                  ),
                ),
                CustomTransbutton(text: "التسجيل باستخدام حساب جوجل",route: () {},),
                Center(
                  child: TextButton(
                      onPressed: () => context.pushName(Routes.signup),
                      child: Text(
                        "انشاء حساب جديد",
                        style: Textutils.logcyan,
                      )),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }

 

  Future<void> loginaccount() async {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!,
      password: password!,
      
    );
  }
}
