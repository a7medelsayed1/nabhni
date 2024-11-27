import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Home/presentation/widgets/recharge_company.dart';
import 'package:nabhni/features/Home/presentation/widgets/recharge_textfield.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';

class RechargeScreen extends StatelessWidget {
   RechargeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const MainAppBar(leadingWidget: BackButton(),
      title: 'شحن الهرباء',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(right: R.sW(context, 20),top: R.sH(context, 16)),
            height: R.sH(context,200),
            width: R.sW(context, double.infinity),
            color:Mycolors.rechargegrey ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("حدد شركة الكهرباء الخاصة بك",style: Textutils.bodybold16.copyWith(fontSize: 18),),
              RechargeCompany()
            ],),

          )
       ,RechargeTextField()
       
        ],
      ),
    );
  }
}

