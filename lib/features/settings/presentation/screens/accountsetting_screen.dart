import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Auth/presentation/widgets/custom_transbutton.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:nabhni/features/settings/models/account_model.dart';
import 'package:nabhni/features/settings/presentation/widgets/language_dialog.dart';

class AccountsettingScreen extends StatelessWidget {
  AccountsettingScreen({super.key});
  List<AccountModel> account = [
    AccountModel(title: 'تغيير كلمة السر', image: '', subtitle: ''),
    AccountModel(title: 'تغيير اللغة', subtitle: 'العربيه', image: ''),
    AccountModel(subtitle: '', title: 'سياسة الخصوصية', image: ''),
    AccountModel(subtitle: '', title: 'حذف الحساب', image: ''),
  ];
  List<Widget> dialogs = [
    Container(),
    LanguageDialog(),
    Container(),
    BottomSheet(
      builder: (BuildContext context) {
        return Container(
          height: 250,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'حذف الحساب',
                style: Textutils.title22bold,
              ),
              SizedBox(
                height: 25,
              ),
              Custombutton(
                  text: 'متابعه', route: () => context.pushName(Routes.login)),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: TextButton(
                    onPressed: () => context.pop(),
                    child: Text(
                      'الغاء',
                      style: Textutils.logcyan,
                    )),
              )
            ],
          ),
        );
      },
      onClosing: () {},
    )
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
            itemCount: account.length,
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
                          account[index].title!,
                          style: Textutils.hello18bold.copyWith(
                              color: Mycolors.titlecolor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          account[index].subtitle!,
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
    ;
  }
}
