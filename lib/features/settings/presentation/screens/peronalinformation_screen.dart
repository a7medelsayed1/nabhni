import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/settings/models/personal_model.dart';
import 'package:nabhni/features/settings/presentation/widgets/birth_dialog.dart';
import 'package:nabhni/features/settings/presentation/widgets/gender_dialog.dart';
import 'package:nabhni/features/settings/presentation/widgets/namealert_dialog.dart';
import 'package:nabhni/features/settings/presentation/widgets/phone_dialog.dart';

class PeronalinformationScreen extends StatelessWidget {
  PeronalinformationScreen({super.key});
  List<PersonalModel> personal = [
    PersonalModel(title: 'الاسم', subtitle: 'علاء توفيق إبراهيم'),
    PersonalModel(
        title: 'البريد الإلكتروني', subtitle: 'alaatawfik_4566@gmail.com'),
    PersonalModel(title: 'رقم الهاتف', subtitle: 'رقم الهاتف'),
    PersonalModel(title: 'النوع', subtitle: 'النوع'),
    PersonalModel(title: 'تاريخ الميلاد', subtitle: 'تاريخ الميلاد'),
  ];
  List<Widget>dialogs=[
    const NameDialog(),
    Container(),
    PhoneDialog(),
    GenderDialog(),
    BirthDialog()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        leadingWidget: BackButton(),
        title: 'المعلومات الشخصيه',
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: R.sH(context, 24),
            right: R.sW(context, 20),
            left: R.sW(context, 20)),
        child: Expanded(
          child: ListView.builder(
            itemCount: personal.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => dialogs[index],
              ),
              child: Container(
                padding: EdgeInsets.all(R.sP(context, 8)),
                height: R.sH(context, 68),
                margin: EdgeInsets.only(bottom: R.sH(context, 8)),
                decoration: BoxDecoration(
                    border: Border.all(color: Mycolors.buttongrey),
                    borderRadius: BorderRadius.circular(R.sR(context, 6))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          personal[index].title,
                          style: Textutils.hello18bold.copyWith(
                              color: Mycolors.titlecolor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          personal[index].subtitle,
                          style: Textutils.suptitlebold16
                              .copyWith(fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Container(
                      height: R.sH(context, 26),
                      width: R.sW(context, 26),
                      decoration: BoxDecoration(
                          color: Mycolors.buttongrey,
                          borderRadius:
                              BorderRadius.circular(R.sR(context, 13))),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: R.F(context, 15),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


