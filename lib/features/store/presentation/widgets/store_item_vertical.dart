import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class StoreItemVertical extends StatefulWidget {
   StoreItemVertical({
    super.key,
  });

  @override
  State<StoreItemVertical> createState() => _StoreItemVerticalState();
}

class _StoreItemVerticalState extends State<StoreItemVertical> {
List<bool>favouritstate=List.generate(6, (index)=>true);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (context, index) => Container(
              height: R.sH(context, 164),
              width: R.sW(context, 353),
              padding: EdgeInsets.all(R.sP(context, 8)),
              margin: EdgeInsets.only(bottom: R.sW(context, 8)),
              decoration: BoxDecoration(
                border: Border.all(color: Mycolors.buttongrey),
                borderRadius: BorderRadius.circular(R.sR(context, 18)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: R.sH(context, 160),
                        width: R.sW(context, 152),
                        decoration: BoxDecoration(
                            color: Mycolors.mediumcyan,
                            borderRadius:
                                BorderRadius.circular(R.sR(context, 9))),
                        child: Center(child: Image.asset(Images.biggenerator)),
                      ),
                      Positioned(
                        bottom: R.sH(context, 14),
                        right: R.sW(context, 8),
                        child: Container(
                          height: R.sH(context, 23),
                          width: R.sW(context, 69),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(R.sR(context, 8))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text('(3.9k)-4.9')],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        bottom: 16,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(onTap: () {
                              setState(() {
                                favouritstate[index]=!favouritstate[index];
                              });
                            },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                child:favouritstate[index]? Image.asset(Images.heart):Image.asset(Images.cyanheart),
                              ),
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: Image.asset(Images.cart),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.only(right: R.sW(context, 8)),
                      child: Column(
                        children: [
                          Text(
                            'مولد كهربائي محرك مولد البنزين مولد الغاز,مولد كهربائي يعمل بالبنزين من توتال، TP1350 ',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Textutils.hello18bold.copyWith(fontWeight: FontWeight.w400,color: Mycolors.titlecolor),
                            
                          ),
                           Row(
                          children: [
                            CircleAvatar(radius: R.sR(context, 5),backgroundColor: Mycolors.primarycolor,),
                            Text(
                             ' توتال',
                              style: Textutils.fontcolor14w400,
                            )
                          ],
                        ), Row(
                          children: [
                            CircleAvatar(radius: R.sR(context, 5),backgroundColor: Mycolors.primarycolor,),
                            Text(
                             ' مزود بحساس مستوى الزيت',
                              style: Textutils.fontcolor14w400,
                            )
                          ],
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
                              style: Textutils.fontcolor14w400.copyWith(fontSize: R.F(context, 16)),
                            )
                          ],
                        ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
