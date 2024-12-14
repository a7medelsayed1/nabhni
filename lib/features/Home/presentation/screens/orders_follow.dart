import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class OrdersFollow extends StatelessWidget {
  const OrdersFollow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        leadingWidget: BackButton(),
        title: 'متابعه الطلبات',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: R.sW(context, 20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الطلبات السابقة',
              style: Textutils.title22bold,
            ),
             SizedBox(height: R.sH(context, 10),),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => Container(

                        margin: EdgeInsets.only(bottom: R.sH(context, 8)),
                        height: R.sH(context, 127),
                        width: R.sW(context, 353),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(R.sR(context, 12)),
                            color: Mycolors.mediumcyan),
                        child: Padding(
                          padding:  EdgeInsets.all(R.sP(context, 8) ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: R.sH(context, 43),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      Images.orders,
                                      height: R.sH(context, 30),
                                      width: R.sW(context, 30),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: R.sW(context, 140),
                                          child: Text('مولد كهربائي بالبنزين من شركه توتال للمولدات',softWrap: true,overflow: TextOverflow.ellipsis,style: Textutils.bodybold16,)),
                                        Text('ID : 6464654656446',style: Textutils.fontcolor14w400,),
                                         
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                       crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(DateTime.now().toString(),style: Textutils.fontcolor14bold,),
                                            Row(
                                              children: [
                                                Text('الشحن  '),
                                                Image.asset(Images.clock)
                                              ],
                                            )
                                          ],
                                        ),
                                  ],
                                ),
                              ),
                              
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: R.sW(context, 200),
                                  height: R.sH(context, 44),
                                  child: Custombutton(text: 'تفاصيل الطلب', route:(){} )),
                              )
                            ],
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
