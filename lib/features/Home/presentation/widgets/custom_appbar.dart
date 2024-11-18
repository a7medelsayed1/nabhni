import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: R.sH(context, 135),
      decoration: BoxDecoration(
        color: Mycolors.mybuttoncolor,
        image: const DecorationImage(image: AssetImage(Images.appbar,)),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(R.sR(context,40)),bottomRight: Radius.circular(R.sR(context,40)))
      )
      ,
      child: Padding(
        padding: const EdgeInsets.only(top: 19.0),
        child: Row(children: [Padding(
          padding: const EdgeInsets.only(right: 18.0,left: 8),
          child: CircleAvatar(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(alignment: Alignment.centerRight,
              child: Row(
                children: [
                  Text("صباح الخير",style: Textutils.hello14,),
                  SizedBox(width: R.sW(context, 8),),
                  Image.asset(Images.hello)
                ],
              ),
            ),
            Text("احمد السيدالسعيد",style: Textutils.hello18bold,)
          ],
        ),
        Spacer(),
        GestureDetector(
          onTap: (){},
          child: Container(
            height: R.sH(context, 38),
            width: R.sW(context, 38),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Mycolors.buttontrans
              ),
              borderRadius: BorderRadius.circular(R.sR(context, 12))
          
            ),
            child: Image.asset(Images.search),
          ),
        ),
           Padding(
             padding: const EdgeInsets.only(left: 22.0,right: 8),
             child: GestureDetector(
               onTap: (){},
               child: Container(
                       height: R.sH(context, 38),
                       width: R.sW(context, 38),
                       decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Mycolors.buttontrans
                ),
                borderRadius: BorderRadius.circular(R.sR(context, 12))
               
                       ),
                       child: Image.asset(Images.notification),
                     ),
             ),
           ),
        ],),
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, 135);
}