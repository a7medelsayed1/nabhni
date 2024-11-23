import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';

class RechargeScreen extends StatelessWidget {
   RechargeScreen({super.key});
  bool selected=false;
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
            height: R.sH(context,192),
            width: R.sW(context, double.infinity),
            color:Mycolors.rechargegrey ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("حدد شركة الكهرباء الخاصة بك",style: Textutils.bodybold16.copyWith(fontSize: 18),),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      selected=true;
                    },
                    child: Container(
                      height: R.sH(context, 90),
                      width: R.sW(context, 90),
                      margin: EdgeInsets.symmetric(vertical: R.sH(context, 12)),
                      decoration: BoxDecoration(
                        color: selected==true? Colors.transparent:Mycolors.lightcyan,
                        border: Border.all(
                          color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(R.sR(context, 12))
                      ),
                      child: Image.asset(Images.recharge),
                    ),
                  ),
                  Text("الكهرباء العدادات الذكية")

                ],
              )
            ],),

          )
       ,Padding(
         padding:  EdgeInsets.only(top: R.sH(context, 32),right: R.sW(context, 20),left: R.sW(context, 20)),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("سداد مستحقات العدادات الذكية",style: Textutils.bodybold16.copyWith(fontSize: 18),),
             Padding(
               padding:  EdgeInsets.only(top: R.sH(context, 8)),
               child: Stack(
                 children:[ Container(
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(R.sR(context, 8)),
                  border: Border.all(
                    color: Colors.black
                  )
                 ),),
                 TextFormField(
                  
                  decoration: InputDecoration(
                             
                    focusedBorder:InputBorder.none ,
                    floatingLabelAlignment:FloatingLabelAlignment.start ,
                    floatingLabelBehavior:FloatingLabelBehavior.auto ,
                    label: Padding(
                      padding:  EdgeInsets.only(right: R.sW(context, 12)),
                      child: Text('كود السداد الإلكتروني/رقم الإشتراك (13 رقم)'),
                    ),
                    
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(R.sR(context, 8))
                    )
                  ),
                 )
                 ],
               ),
             )
             
           ],
         ),
       )
       
        ],
      ),
    );
  }
}