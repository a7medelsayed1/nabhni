import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_transbutton.dart';
import 'package:nabhni/features/Home/presentation/widgets/custom_appbar.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:nabhni/features/settings/presentation/widgets/setting_list.dart';
import 'package:nabhni/features/settings/presentation/widgets/social_media.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        leadingWidget: BackButton(),
        title: 'الإعدادات',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: R.sW(context, 20), vertical: R.sH(context, 24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: R.sW(context, 8)),
                  child: Container(
                    padding: EdgeInsets.all(R.sP(context, 2)),
                    height: R.sH(context, 49),
                    width: R.sW(context, 49),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(R.sR(context, 24.5)),
                      border: Border.all(
                        width: R.sW(context, 2),
                        color: Mycolors.primarycolor
                      ),

                    ),
                    child: Container(
                      height: R.sH(context, 38),
                      width: R.sW(context, 38),
                      decoration: BoxDecoration(
                        color: Mycolors.mediumcyan ,
                        borderRadius: BorderRadius.circular(R.sR(context, 24.5)),
                        border: Border.all(
                          width:  R.sW(context, 1.5),
                          color: Mycolors.mediumprimary
                        )
                      ),
                      child: Center(child: Text('ع', style: Textutils.title22bold,)),
                    ),
                  ),
                  // child: CircleAvatar(
                  //   radius: 24.5,
                  //   backgroundColor: Mycolors.primarycolor,
                  //   child: CircleAvatar(
                  //     radius: 22,
                  //     backgroundColor: Colors.white,
                  //     child: CircleAvatar(
                  //         radius: 20,
                  //         backgroundColor: Mycolors.mediumcyan,
                  //         child: CircleAvatar(
                  //           radius: 18,
                  //           child: Text(
                  //             'ع',
                  //             style: Textutils.title22bold,
                  //           ),
                  //           backgroundColor: Mycolors.lightcyan,
                  //         )),
                  //   ),
                  // ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'احمد السيد السعيد',
                      style: Textutils.bodybold16.copyWith(fontSize: 20),
                    ),
                    Text(
                      '201000948891+',
                      style: Textutils.bodybold16
                          .copyWith(fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
            Divider(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(top: R.sH(context, 8)),
              height: R.sH(context, 340),
              width: R.sW(context, 353),
              child: SettingList(),
            ),
            GestureDetector(
              onTap: () => BottomSheet(builder: (BuildContext context) { return Container(height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('data'),
                  Custombutton(text: 'متابعه', route: ()=>context.pushName(Routes.login)),
                  CustomTransbutton(text: 'الغاء', route: () {  },)
                ],
              ),
              
              ); }, onClosing: () {  },),
              child: Container(
                margin: EdgeInsets.only(bottom: R.sH(context, 20)),
                height: R.sH(context, 36),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: R.sW(context, 8)),
                      height: R.sH(context, 46),
                      width: R.sW(context, 36),
                      decoration: BoxDecoration(
                          color: Mycolors.mediumcyan,
                          borderRadius: BorderRadius.circular(R.sR(context, 8))),
                      child: Image.asset(Images.logout),
                    ),
                    Text(
                      'تسجيل الخروج',
                      style: Textutils.bodybold16.copyWith(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SocialMedia()
          ],
        ),
      ),
    );
  }
}
