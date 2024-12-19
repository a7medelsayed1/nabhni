import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  bool showdetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        leadingWidget: BackButton(),
        title: 'تقارير الاستهلاك',
      ),
      body: Padding(
        padding: EdgeInsets.only(
            right: R.sW(context, 20),
            left: R.sW(context, 20),
            top: R.sH(context, 10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'المدفوعات السابقة',
              style: Textutils.title22bold,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 9,
                    itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.only(bottom: R.sH(context, 8)),
                          // height: R.sH(context, 83),
                          width: R.sW(context, double.infinity),
                          decoration: BoxDecoration(
                              color: Mycolors.mediumcyan,
                              borderRadius:
                                  BorderRadius.circular(R.sR(context, 12))),
                          child: Padding(
                            padding: EdgeInsets.all(R.sP(context, 8)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: R.sH(context, 42),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        Images.odetails,
                                        height: R.sH(context, 33),
                                        width: R.sW(context, 33),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'شراء مولد توتال الكهربائي',
                                            softWrap: true,
                                            overflow: TextOverflow.ellipsis,
                                            style: Textutils.bodybold16,
                                          ),
                                          Text(
                                            'نظام الدفع بالكارت الذكي - من توتال',
                                            style: Textutils.fontcolor14w400
                                                .copyWith(
                                                    fontSize: R.F(context, 12)),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            '+ 205 ج.م. ',
                                            style: Textutils.fontcolor14bold,
                                          ),
                                          Text(' 29 نوفمبر 2024 '),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                showdetails == false
                                    ? Align(
                                        alignment: Alignment.center,
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                showdetails = true;
                                              });
                                            },
                                            icon: Icon(
                                              Icons.keyboard_arrow_down,
                                              size: R.F(context, 30),
                                            )),
                                      )
                                    : Column(
                                        children: [
                                          Divider(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'إيصال ',
                                                    style: Textutils
                                                        .fontcolor14w400,
                                                  ),
                                                  Text(
                                                    'مقدم الخدمة',
                                                    style: Textutils
                                                        .fontcolor14w400,
                                                  ),
                                                  Text(
                                                    'الوقت',
                                                    style: Textutils
                                                        .fontcolor14w400,
                                                  ),
                                                  Text(
                                                    'مدفوع من',
                                                    style: Textutils
                                                        .fontcolor14w400,
                                                  ),
                                                  Text(
                                                    'رقم الكارت',
                                                    style: Textutils
                                                        .fontcolor14w400,
                                                  ),
                                                  Text(
                                                    'رسوم الخدمة ',
                                                    style: Textutils
                                                        .fontcolor14w400,
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    'معاملة 4535464',
                                                    style: Textutils
                                                        .fontcolor14bold,
                                                  ),
                                                  Text(
                                                    'شركة شمال الدلتا ',
                                                    style: Textutils
                                                        .fontcolor14w400,
                                                  ),
                                                  Text(
                                                    '10:30 صباحًا',
                                                    style: Textutils
                                                        .fontcolor14bold,
                                                  ),
                                                  Text(
                                                    'Visa',
                                                    style: Textutils
                                                        .fontcolor14bold,
                                                  ),
                                                  Text(
                                                    '**** **** **** 5465',
                                                    style: Textutils
                                                        .fontcolor14bold,
                                                  ),
                                                  Text(
                                                    '5 ج.م',
                                                    style: Textutils
                                                        .fontcolor14bold,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Divider(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'اجمالي المبلغ',
                                                style: Textutils.bodybold16,
                                              ),
                                              Text(
                                                '+ 205 ج.م.',
                                                style: Textutils.bodybold16,
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    showdetails = false;
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.keyboard_arrow_up,
                                                  size: R.F(context, 30),
                                                )),
                                          )
                                        ],
                                      )
                              ],
                            ),
                          ),
                        )))
          ],
        ),
      ),
    );
  }
}
