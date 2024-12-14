import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/settings/models/setting_model.dart';

class SettingList extends StatelessWidget {
  SettingList({
    super.key,
  });
  List<SettingModel> data = [
   
    SettingModel(title: "المعلومات الشخصية",image:  Images.setting1),
    SettingModel(title: "إعدادات الحساب",image:  Images.setting2),
    SettingModel(title: "العناصر المفضة لدى",image:  Images.setting3),
     SettingModel(title: "العناوين المسجلة",image:  Images.setting4),
    SettingModel(title: "شارك مع أصحابك",image:  Images.setting5),
    SettingModel(title: "الشروط والأحكام",image:  Images.setting6),
  ];
 List<String> subsetting=[
  Routes.personal,
  Routes.account,
  Routes.favourits,
  Routes.address,
  Routes.share,
  Routes.terms
 ]; 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => context.pushName(subsetting[index]),
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
                child: Image.asset(data[index].image),
              ),
              Text(
                data[index].title,
                style: Textutils.bodybold16.copyWith(fontSize: 18),
              ),
              Spacer(),
              Container(
                height: R.sH(context, 26),
                width: R.sW(context, 26),
                decoration: BoxDecoration(
                    color: Mycolors.mediumcyan,
                    borderRadius: BorderRadius.circular(R.sR(context, 50))),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Mycolors.primarycolor,
                  size: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
