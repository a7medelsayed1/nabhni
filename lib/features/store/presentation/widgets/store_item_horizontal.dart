import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class StoreItemHorizontal extends StatelessWidget {
  const StoreItemHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: EdgeInsets.all(R.sP(context, 8)),
              margin: EdgeInsets.only(left: R.sW(context, 8)),
              height: R.sH(context, 292),
              width: R.sW(context, 168),
              decoration: BoxDecoration(
                  border: Border.all(color: Mycolors.buttongrey),
                  borderRadius: BorderRadius.circular(R.sR(context, 18))),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: R.sH(context, 8)),
                        height: R.sH(context, 160),
                        width: R.sW(context, 152),
                        decoration: BoxDecoration(
                            color: Mycolors.mediumcyan,
                            borderRadius:
                                BorderRadius.circular(R.sR(context, 9))),
                        child:
                            Center(child: Image.asset(Images.biggenerator)),
                      ),
                      Positioned(
                        bottom:R.sH(context, 14) ,
                        right: R.sW(context, 8),
                        child: Container(
                          height: R.sH(context, 23),
                          width: R.sW(context, 69),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:BorderRadius.circular(R.sR(context, 8))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text('(3.9k)-4.9')
                          ],),
                        
                        ),
                      ),
                      Positioned(
                          top: 8,
                          left: 8,
                          bottom: 16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(radius: 15,backgroundColor: Colors.white,child: Image.asset(Images.heart),),
                           CircleAvatar(radius: 15,backgroundColor: Colors.white,child: Image.asset(Images.cart),)                            ],
                        ),
                      )    
                    ],
                  ),
                  Text(
                    'مولد كهربائي محرك مولد البنزين مولد الغاز ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Textutils.fontcolor14w400,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '20.990 ج.م',
                        style: Textutils.title22bold.copyWith(fontSize: 20),
                      ),
                      Text(
                        '25.990 ج.م',
                        style: Textutils.fontcolor14w400.copyWith(
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(Images.freedelivery),
                      Text(
                        ' توصيل مجاني',
                        style: Textutils.timer12,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CircleAvatar(radius: R.sR(context, 5),backgroundColor: Mycolors.primarycolor,),
                      Text(
                       ' Honda',
                        style: Textutils.timer12,
                      )
                    ],
                  ),
                ],
              ),
            );
  }
}
