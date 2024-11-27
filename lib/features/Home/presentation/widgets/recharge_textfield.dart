import 'package:flutter/material.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class RechargeTextField extends StatefulWidget {
  const RechargeTextField({
    super.key,
  });

  @override
  State<RechargeTextField> createState() => _RechargeTextFieldState();
}

class _RechargeTextFieldState extends State<RechargeTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

