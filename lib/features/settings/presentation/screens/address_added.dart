import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class AddressAdded extends StatelessWidget {
  const AddressAdded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MainAppBar(
      title: 'العناوين المسجلة',
      leadingWidget: BackButton(onPressed: () => context..pop(),),
    ),
    body: Padding(padding:EdgeInsets.only(top:R.sH(context, 24),right: R.sW(context, 20),left:  R.sW(context, 20),bottom: R.sH(context, 70) ),
    child: Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index)=>Container(
              padding: EdgeInsets.all(R.sP(context, 8)),
              margin: EdgeInsets.only(bottom: R.sH(context, 8)),
              height: R.sH(context, 75),
              width: R.sW(context, 353),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Mycolors.buttongrey
                ),
                borderRadius: BorderRadius.circular(R.sR(context, 6))
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(

                    children: [
                      Row(
                        children: [
                          Image.asset(Images.locationIcon,color: Mycolors.primarycolor,height: R.sH(context, 20),width: R.sW(context, 20),),
                          Text('قرية المعصرة / أبو جوهري',style: Textutils.cyan14.copyWith(fontSize: R.F(context, 16),),)
                      
                        ],
                      ),
                      Text('مركز بلقاس - محافظة الدقهلية',style: Textutils.fontcolor14bold,)
                    ],
                  ),
                  IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.trash,color: Colors.red,size: 22,))
                ],
              ) ,
            )),
        ),
        Custombutton(text: 'اضف عنوان', route:(){} )
      ],
    ),
    ),
    );
  }
}