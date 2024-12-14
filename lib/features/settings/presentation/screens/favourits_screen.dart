import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/store/presentation/widgets/store_item_horizontal.dart';

class FavouritsScreen extends StatefulWidget {
  const FavouritsScreen({super.key});

  @override
  State<FavouritsScreen> createState() => _FavouritsScreenState();
}
List<bool> clicked=List.generate(4, (e)=>false);
class _FavouritsScreenState extends State<FavouritsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:const MainAppBar(title: 'العناصر المفضلة لدى',
    leadingWidget: BackButton(),
    ),
    body: Padding(
      padding:  EdgeInsets.only(top: R.sH(context, 8),right: R.sW(context, 12),left: R.sW(context, 12)),
      child: Column(
        children: [
          Expanded(child:  GridView.builder(
                      
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    mainAxisSpacing: 8, // Vertical spacing
                    crossAxisSpacing: 8, 
                    childAspectRatio: .6// Horizontal spacing
                  ),
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return Container(
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
                                  InkWell(onTap: () {
                                    setState(() {
                                      
                                      clicked[index]=!clicked[index];
                                    });
                                  },child: CircleAvatar(radius: 15,backgroundColor: Colors.white,child: clicked[index]? Image.asset(Images.heart):Image.asset(Images.cyanheart),)),
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
                  );},
                  
                  )),
        ],
      ),
    ),
    
    );
  }
}