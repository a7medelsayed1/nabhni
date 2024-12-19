import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
              left: R.sW(context, 16),
              right: R.sW(context, 20),
              top: R.sH(context, 26),
              bottom: R.sH(context, 16)),
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Images.newsdetails), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(
                color: Colors.white,
              ),
              Text(
                'وزير الكهرباء: 30 مليار جنيه خسائر القطاع بسبب سرقات التيار',
                style: Textutils.title22bold
                    .copyWith(color: Colors.white, fontSize: R.F(context, 22)),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(R.sW(context, 8)),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(Images.clock),
                    SizedBox(
                      width: 4,
                    ),
                    Text('10:30 صباحًا.29 نوفمبر 2024'),
                    Spacer(),
                    Image.asset(Images.source)
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'كشف الدكتور محمود عصمت وزير الكهرباء والطاقة المتجددة ، أنه أرسل خطابا رسميا للشركة القابضة لكهرباء مصر وجميع شركات توزيع الكهرباء الـ 9 على مستوى الجمهورية بإلغاء شرط توفير إيصال الممارسة لتقديم طلب تركيب عدادات كودية المبانى العشوائية والمخالفة.',
                  style: Textutils.suptitlebold16,
                ),
                SizedBox(
                  height: R.sH(context, 12),
                ),
                Text(
                  'كشف الدكتور محمود عصمت وزير الكهرباء والطاقة المتجددة ، أنه أرسل خطابا رسميا للشركة القابضة لكهرباء مصر وجميع شركات توزيع الكهرباء الـ 9 على مستوى الجمهورية بإلغاء شرط توفير إيصال الممارسة لتقديم طلب تركيب عدادات كودية المبانى العشوائية والمخالفة.',
                  style: Textutils.suptitlebold16,
                ),
                SizedBox(
                  height: R.sH(context, 12),
                ),
                Text(
                  'كشف الدكتور محمود عصمت وزير الكهرباء والطاقة المتجددة ، أنه أرسل خطابا رسميا للشركة القابضة لكهرباء مصر وجميع شركات توزيع الكهرباء الـ 9 على مستوى الجمهورية بإلغاء شرط توفير إيصال الممارسة لتقديم طلب تركيب عدادات كودية المبانى العشوائية والمخالفة.',
                  style: Textutils.suptitlebold16,
                ),
                SizedBox(height: R.sH(context, 60),),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: R.sW(context, 4)),
                        padding: EdgeInsets.all(R.sP(context, 2)),
                        height: R.sH(context, 44),
                        width: R.sW(context, 44),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(R.sR(context, 22)),
                          border: Border.all(
                            color: Mycolors.primarycolor
                          )
                        ),
                        child: Container(
                          height: R.sH(context, 38),
                          width: R.sW(context, 38),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(R.sR(context, 19)),
                            color: Mycolors.primarycolor
                          ),
                          child: Image.asset(Images.arrows)
                        ),
                      ),
                    ),
                    
                    Text('الإنتقال إلى المصدر',style: Textutils.bodybold16,)
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
