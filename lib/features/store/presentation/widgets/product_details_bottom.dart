import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';

class ProductDetailsBottom extends StatefulWidget {
  const ProductDetailsBottom({
    super.key,
  });

  @override
  State<ProductDetailsBottom> createState() => _ProductDetailsBottomState();
}
int counter =1;
class _ProductDetailsBottomState extends State<ProductDetailsBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: R.sH(context, 90),
      color: Mycolors.mediumcyan,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (counter > 0) counter--;
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
                                               counter++;
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
                                        
                                      ],
                                    ),
          ),
          SizedBox(
            width: 270,
            child: Custombutton(text: 'شراء', route: ()=>context.pushName(Routes.checkout)),
          )
    
        ],
      ),
    );
  }
}