import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/features/Home/presentation/models/griditems.dart';

class GridViewItem extends StatelessWidget {
   GridViewItem({
    super.key,
  });
   List<Griditems> griditems=[
    Griditems(icon: Images.gridone, label: "استعلام عن الخدمه"),
    Griditems(icon: Images.gridtwo, label: "شحن الكهرباء"),
    Griditems(icon: Images.gridthree, label: "تقارير الاستهلاك"),
    Griditems(icon: Images.gridfour, label: "خدمه العملاء"),
    Griditems(icon: Images.gridfive, label: "الاخبار و التحديثات"),
    Griditems(icon: Images.gridsix, label: "ارشادات و توجيهات"),

   ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
       gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              mainAxisSpacing: 8, // Vertical spacing
              crossAxisSpacing: 8, // Horizontal spacing
            ),
        itemCount: griditems.length,
        itemBuilder: (context,index){
         return GestureDetector(
          onTap: (){},
           child: Container(
           height: R.sH(context, 100),
           width: R.sW(context, 100),
           decoration: BoxDecoration(
               color: Mycolors.gridcolor,
               borderRadius: BorderRadius.circular(R.sR(context, 16))
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     height: R.sH(context, 44),
                     width: R.sW(context, 44),
                     decoration: BoxDecoration(
                       color: Mycolors.gridinsidecolor,
                       borderRadius: BorderRadius.circular(R.sR(context, 4))
                     ),
                     child:Image.asset(griditems[index].icon) ,
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(griditems[index].label),
                   )
                 ],
               ),
                    ),
         );}
      ),
    );
  }
}
