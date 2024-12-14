import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const MainAppBar(
        title: 'العناوين المسجلة',
        leadingWidget: BackButton(),
      ),
      body: Column(
        
        children: [
          Padding(
            padding: EdgeInsets.only(top: R.sH(context, 135),bottom: R.sH(context, 64)),
            child: Center(child: Image.asset(Images.nolocation)),
          ),
          Text('لا توجد عناوين حتى الآن',style: Textutils.title22bold,textAlign: TextAlign.start,),
          Container(
            margin: EdgeInsets.only(top: R.sH(context, 16),bottom: R.sH(context, 160)),
            width: R.sW(context, 220),
            child: Text('لا توجد عناوين مسجلة بالتطبيق أضف عنوانًا جديدًا..',softWrap: true,overflow: TextOverflow.visible,style: Textutils.suptitlebold16.copyWith(fontWeight: FontWeight.w400,fontSize: R.F(context, 18)),textAlign: TextAlign.center,),
          ),
          Custombutton(text: 'أضف عنوان جديد', route: ()=>context.pushName(Routes.addressdetails))
        ],
      ),
    );
  }
}