import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        leadingWidget: BackButton(),
        title: 'عربة التسوق',
      ),
      body: Column(
        children: [
          counter > 0
              ? Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 1,
                      itemBuilder: (context, index) => Container(
                            
                            height: R.sH(context, 164),
                            width: R.sW(context, 353),
                            padding: EdgeInsets.all(R.sP(context, 8)),
                            margin: EdgeInsets.all( R.sW(context, 12)),
                            decoration: BoxDecoration(
                              border: Border.all(color: Mycolors.buttongrey),
                              borderRadius:
                                  BorderRadius.circular(R.sR(context, 18)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: R.sH(context, 164),
                                      width: R.sW(context, 152),
                                      decoration: BoxDecoration(
                                          color: Mycolors.mediumcyan,
                                          borderRadius: BorderRadius.circular(
                                              R.sR(context, 9))),
                                      child: Center(
                                          child:
                                              Image.asset(Images.biggenerator)),
                                    ),
                                    Positioned(
                                      bottom: R.sH(context, 14),
                                      right: R.sW(context, 8),
                                      child: Container(
                                        height: R.sH(context, 23),
                                        width: R.sW(context, 69),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                R.sR(context, 8))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [Text('(3.9k)-4.9')],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        right: R.sW(context, 8)),
                                    child: Column(
                                      children: [
                                        Text(
                                          'مولد كهربائي محرك مولد البنزين مولد الغاز,مولد كهربائي يعمل بالبنزين من توتال، TP1350 ',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: Textutils.hello18bold.copyWith(
                                              fontWeight: FontWeight.w400,
                                              color: Mycolors.titlecolor),
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: R.sR(context, 5),
                                              backgroundColor:
                                                  Mycolors.primarycolor,
                                            ),
                                            Text(
                                              ' توتال',
                                              style: Textutils.fontcolor14w400,
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '20.990 ج.م',
                                              style: Textutils.title22bold
                                                  .copyWith(fontSize: 20),
                                            ),
                                            Text(
                                              '25.990 ج.م',
                                              style: Textutils.fontcolor14w400
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .lineThrough),
                                            )
                                          ],
                                        ),
                                        const Spacer(),
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if (counter > 1) counter--;
                                                });
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    left: R.sW(context, 12)),
                                                height: R.sH(context, 26),
                                                width: R.sW(context, 26),
                                                decoration: BoxDecoration(
                                                    color: Mycolors.lightgrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            R.sR(context, 6))),
                                                child: Icon(
                                                  FontAwesomeIcons.minus,
                                                  color: Colors.white,
                                                  size: 14,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '$counter',
                                              style: Textutils.bodybold16,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  if (counter > 0) counter++;
                                                });
                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    right: R.sW(context, 12)),
                                                height: R.sH(context, 26),
                                                width: R.sW(context, 26),
                                                decoration: BoxDecoration(
                                                    color: Mycolors.boldgrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            R.sR(context, 6))),
                                                child: Icon(
                                                  FontAwesomeIcons.plus,
                                                  color: Colors.white,
                                                  size: 14,
                                                ),
                                              ),
                                            ),
                                            const Spacer(),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  counter = 0;
                                                });
                                              },
                                              child: Container(
                                                height: R.sH(context, 34),
                                                width: R.sW(context, 34),
                                                decoration: BoxDecoration(
                                                    color: Mycolors.buttongrey,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            R.sR(context, 50))),
                                                child: const Icon(
                                                  FontAwesomeIcons.trash,
                                                  color: Colors.red,
                                                  size: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )))
              : Expanded(child: Container(child: SvgPicture.asset(Images.emptycart,fit: BoxFit.contain,height: 300),)),
          Container(
            padding: EdgeInsets.only(
                bottom: R.sH(context, 40),
                top: R.sH(context, 12),
                right: R.sW(context, 20),
                left: R.sW(context, 20)),
            height: R.sH(context, 169),
            color: Mycolors.lightcyan,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ملخص الطلب والإجمالي ( $counter منتج )',
                  style: Textutils.suptitlebold16.copyWith(
                      fontSize: R.F(context, 14), fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'المجموع الكلي',
                      style: Textutils.title22bold
                          .copyWith(fontSize: R.F(context, 18)),
                    ),
                    Text('${20.990 * counter} ج.م',
                        style: Textutils.title22bold)
                  ],
                ),
                Spacer(),
                Custombutton(
                    text: 'اتمام عمليه الشراء',
                    route: () {
                      context.pushName(Routes.productdetails);
                      setState(() {
                        counter = 1;
                      });
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
