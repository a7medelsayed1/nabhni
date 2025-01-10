import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_graybutton.dart';
import 'package:nabhni/features/common/widgets/custom_textfield.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_transbutton.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});
GlobalKey<FormState> formkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    String firstname,secondname;
    return Scaffold(
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
                    "إنشاء حساب ",
                    style: Textutils.logintitle,
                  )),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "أدخل بياناتك من أجل تسجيل الدخول",
                    style: Textutils.suptitlebold16,
                  )),
              SizedBox(
                height: R.sH(context, 40),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Text("الاسم الاول"
                    ,style: Textutils.fontcolor14bold,
                  )),
              CustomTextfield(
                onChanged: (data)async{
                  firstname=data;
                  final SharedPreferences prefs = await SharedPreferences.getInstance();
                  await prefs.setString('firstname', firstname);
          
                },
                label: "الاسم الاول",
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "الاسم الاخير",
                    style: Textutils.fontcolor14bold,
                  )),
              CustomTextfield(
                onChanged: (data)async{
                  secondname=data;
                  final SharedPreferences prefs = await SharedPreferences.getInstance();
                  await prefs.setString('secondname', secondname);
          
                },
                label: "الاسم الاخير",
              ),
              Padding(
                padding:  EdgeInsets.only(top: R.sH(context, 90)),
                child: Custombutton(
                  text: "التالي",
                  route: (){
                    if (formkey.currentState!.validate()) {
                      context.pushName(Routes.signupsecond);
                    }
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
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: CustomTransbutton(
                  mobile: true,
                  text: 'التسجيل باستخدام رقم الهاتف', route: ()=>context.pushName(Routes.phone),
                ),
              ),
              CustomTransbutton(text: "التسجيل باستخدام حساب جوجل",route: (){

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
              }),
             
            ],
          ),
        ),
      )),
    );
  }
}
