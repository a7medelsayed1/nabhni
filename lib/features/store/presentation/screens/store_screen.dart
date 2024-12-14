import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/store/presentation/widgets/store_appbar.dart';
import 'package:nabhni/features/store/presentation/widgets/store_category.dart';
import 'package:nabhni/features/store/presentation/widgets/store_item_horizontal.dart';
import 'package:nabhni/features/store/presentation/widgets/store_item_vertical.dart';

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
                      onPressed: () =>context.pushName(Routes.bestseller),
                      child: Text(
                        'مشاهدة الكل',
                        style: Textutils.suptitlebold16.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: R.F(context, 13)),
                      )),
                ],
              ),
              Container(
                 margin: EdgeInsets.only(bottom: R.sH(context, 8)),
        height: R.sH(context, 292),
                child: ListView.builder(
 scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => StoreItemHorizontal())),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'مقترحة لك',
                    style: Textutils.bodybold16
                        .copyWith(fontSize: R.F(context, 18)),
                  ),
                  TextButton(
                      onPressed: () =>context.pushName(Routes.recommended),
                      child: Text(
                        'مشاهدة الكل',
                        style: Textutils.suptitlebold16.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: R.F(context, 13)),
                      )),
                ],
              ),
              StoreItemVertical(),
            ],
          ),
        ),
      ),
    );
  }
}




