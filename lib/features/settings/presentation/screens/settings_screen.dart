import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Home/presentation/widgets/custom_appbar.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/settings/presentation/widgets/setting_list.dart';

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
                  child: CircleAvatar(
                    radius: 24.5,
                    backgroundColor: Mycolors.primarycolor,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Mycolors.mediumcyan,
                          child: CircleAvatar(
                            radius: 18,
                            child: Text(
                              'ع',
                              style: Textutils.title22bold,
                            ),
                            backgroundColor: Mycolors.lightcyan,
                          )),
                    ),
                  ),
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
            Container(
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
            RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(text: 'لو عاوز تعرف اكتر؟', style: Textutils.bodybold16),
              TextSpan(text: ' تابعنا علي', style: Textutils.suptitlebold16)
            ])),
            Container(
              margin: EdgeInsets.only(top: R.sH(context, 8)),
              width: R.sW(context, 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
                children: [
                Image.asset(Images.face),
                  Image.asset(Images.x), Image.asset(Images.linkedin),Image.asset(Images.insta),
              ],),
            )
          ],
        ),
      ),
    );
  }
}


