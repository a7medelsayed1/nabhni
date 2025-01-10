import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/store/models/category_model.dart';

class StoreCategoryHorizontal extends StatelessWidget {
   StoreCategoryHorizontal({
    super.key,
  });
final List <CategoryModel> categories=[
  CategoryModel(image: Images.generator, name: 'مولدات طاقه تقليديه'),
  CategoryModel(image: Images.solarcells, name: "خلايا شمسيه"),
  CategoryModel(image: Images.upsbattery, name: "بطاريات UPS"),
  CategoryModel(image: Images.powerbank, name: 'باور بانك'),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: R.sH(context, 112),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.symmetric(vertical: R.sH(context, 8)),
          margin: EdgeInsets.only(left: R.sW(context, 8)),
          height: R.sH(context, 112),
          width: R.sW(context, 112),
          decoration: BoxDecoration(
              color: Mycolors.mediumcyan,
              borderRadius: BorderRadius.circular(R.sR(context, 10))),
              child: Column(
                children: [
                  Image.asset(categories[index].image,height: 80,),
                  Text(categories[index].name,style: Textutils.hello14.copyWith(color: Mycolors.titlecolor),)
                ],
              ),
        ),
      ),
    );
  }
}