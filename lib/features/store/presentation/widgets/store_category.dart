import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class StoreCategoryHorizontal extends StatelessWidget {
  const StoreCategoryHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: R.sH(context, 112),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(left: R.sW(context, 8)),
          height: R.sH(context, 112),
          width: R.sW(context, 112),
          decoration: BoxDecoration(
              color: Mycolors.mediumcyan,
              borderRadius: BorderRadius.circular(R.sR(context, 10))),
              child: Column(
                children: [
                  Image.asset(Images.generator),
                  Text('مولدات محموله',style: Textutils.hello14.copyWith(color: Mycolors.titlecolor),)
                ],
              ),
        ),
      ),
    );
  }
}