import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class LocationBox extends StatelessWidget {
  const LocationBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(top: R.sH(context,12),left: R.sW(context, 16),right: R.sW(context, 16)),
    child: Column(children: [
      Container(
        height: R.sH(context, 56),
        width: R.sW(context, double.infinity),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Mycolors.mybuttoncolor,
          ),
          shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(R.sR(context, 6),)),
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [Align(alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(Images.locationIcon),
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Text("الموقع الحالي",textAlign: TextAlign.start,style: Textutils.bodybold16,),
                    ),
                  ],
                ),
              ),Padding(
                padding:  EdgeInsets.only(right:R.sW(context, 18) ),
                child:const Align(alignment:Alignment.centerRight ,child: Text("المنصوره قسم اول-كليه الاداب",textAlign: TextAlign.start,)),
              )],),
              TextButton(onPressed: (){}, child: Text("تغيير",style: Textutils.cyan14,))
            ],
          ),
        ),)
    ],),
    
    );
  }
}