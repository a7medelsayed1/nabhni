import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_textfield.dart';
import 'package:nabhni/features/store/presentation/widgets/store_appbar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: R.sW(context, 12),left: R.sW(context, 12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StoreAppbar(),
              Text(
                'المنتجات',
                style:
                    Textutils.bodybold16.copyWith(fontSize: R.F(context, 18)),
              ),
              StoreCategoryHorizontal(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الأكثر مبيعًا',
                    style: Textutils.bodybold16
                        .copyWith(fontSize: R.F(context, 18)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'مشاهدة الكل',
                        style: Textutils.suptitlebold16.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: R.F(context, 13)),
                      )),
                ],
              ),
              StoreItemHorizontal(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'مقترحة لك',
                    style: Textutils.bodybold16
                        .copyWith(fontSize: R.F(context, 18)),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'مشاهدة الكل',
                        style: Textutils.suptitlebold16.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: R.F(context, 13)),
                      )),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: R.sH(context,8)),
                child: StoreItemVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StoreItemVertical extends StatelessWidget {
  const StoreItemVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
         shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: 6,
          itemBuilder: (context, index) => Container(
                height: R.sH(context, 164),
                width: R.sW(context, 353),
                padding: EdgeInsets.all(R.sP(context, 8)),
                margin: EdgeInsets.only(bottom: R.sW(context, 8)),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Mycolors.buttongrey
                  ),
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
                                borderRadius: BorderRadius.circular(
                                    R.sR(context, 9))),
                          ),
                        ],
                      )
                ],),
              )),
    );
  }
}

class StoreItemHorizontal extends StatelessWidget {
  const StoreItemHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: R.sH(context, 8)),
        height: R.sH(context, 292),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(R.sP(context, 8)),
                  margin: EdgeInsets.only(left: R.sW(context, 8)),
                  height: R.sH(context, 292),
                  width: R.sW(context, 168),
                  decoration: BoxDecoration(
                      border: Border.all(color: Mycolors.buttongrey),
                      borderRadius:
                          BorderRadius.circular(R.sR(context, 18))),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: R.sH(context, 160),
                            width: R.sW(context, 152),
                            decoration: BoxDecoration(
                                color: Mycolors.mediumcyan,
                                borderRadius: BorderRadius.circular(
                                    R.sR(context, 9))),
                          ),
                        ],
                      )
                    ],
                  ),
                )));
  }
}

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
        itemCount: 3,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(left: R.sW(context, 8)),
          height: R.sH(context, 112),
          width: R.sW(context, 112),
          decoration: BoxDecoration(
              color: Mycolors.mediumcyan,
              borderRadius: BorderRadius.circular(R.sR(context, 10))),
        ),
      ),
    );
  }
}
