import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: 'بيانات العنوان',
        leadingWidget: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: R.sH(context, 24),
              right: R.sW(context, 20),
              left: R.sW(context, 20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'موقع التوصيل',
                style:
                    Textutils.title22bold.copyWith(fontSize: R.F(context, 20)),
              ),
              Image.asset(
                Images.map,
                width: double.infinity,
              ),
              SizedBox(
                height: R.sH(context, 40),
              ),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('المنطقة / القرية / الحي',style: Textutils.fontcolor14bold,),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: R.sH(context, 8)),
                    child: TextFormField(
                      style: Textutils.logcyan,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Mycolors.mediumcyan,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.circular(R.sR(context, 6)))),
                    ),
                  ),
                  Text('المدينة',style: Textutils.fontcolor14bold),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: R.sH(context, 8)),
                    child: TextFormField(
                      style: Textutils.logcyan,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Mycolors.mediumcyan,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.circular(R.sR(context, 6)))),
                    ),
                  ),
                  Text('المحافظة',style: Textutils.fontcolor14bold),
                  Padding(
                    padding:  EdgeInsets.only(top: R.sH(context, 8),bottom: R.sH(context, 100)),
                    child: TextFormField(
                      style: Textutils.logcyan,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Mycolors.mediumcyan,
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.circular(R.sR(context, 6)))),
                    ),
                  ),
                ],
              )),
              Custombutton(text: 'حفظ العنوان', route: ()=>context.pushName(Routes.addressadded))
            ],
          ),
        ),
      ),
    );
  }
}
