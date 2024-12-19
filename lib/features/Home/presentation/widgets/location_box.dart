import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
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
    return Container(
      margin: EdgeInsets.only(
          top: R.sH(context, 12),
          left: R.sW(context, 16),
          right: R.sW(context, 16)),
      child: Column(
        children: [
          Container(
            height: R.sH(context, 56),
            width: R.sW(context, double.infinity),
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Mycolors.primarycolor,
                ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(
                  R.sR(context, 6),
                )),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 4.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: R.sW(context, 8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(Images.locationIcon),
                            Padding(
                              padding: const EdgeInsets.only(right: 4.0),
                              child: Text(
                                "الموقع الحالي",
                                textAlign: TextAlign.start,
                                style: Textutils.bodybold16,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: R.sW(context, 18)),
                          child: const Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "المنصوره غرب-شارع جيهان",
                                textAlign: TextAlign.start,
                              )),
                        )
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () =>context.pushName(Routes.addressadded),
                      child: Text(
                        "تغيير",
                        style: Textutils.cyan14,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
