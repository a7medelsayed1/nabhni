import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Home/presentation/widgets/support_widget.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';

class CallcenterScreen extends StatelessWidget {
  const CallcenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const MainAppBar(
        leadingWidget: BackButton(),
        title: 'الدعم',
      ),
      body: Padding(
        padding:
            EdgeInsets.only(right: R.sW(context, 20), left: R.sW(context, 20)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: R.sH(context, 21), bottom: R.sH(context, 12)),
                child: Image.asset(Images.support),
              ),
              Container(
                width: R.sW(context, 353),
                child: Column(
                  children: [
                    Text(
                      'تحتاج إلى مساعدة؟ نحن هنا لخدمتك!',
                      style: Textutils.title22bold.copyWith(fontSize: 24),
                    ),
                    Text(
                      'مرحبًا بك في صفحة الدعم! إذا كنت تواجه أي مشكلة أو لديك استفسار، نحن هنا لتقديم المساعدة التي تحتاجها. اختر من بين الخيارات أدناه أو تواصل معنا مباشرةً، وسنحرص على حل مشكلتك في أقرب وقت ممكن.',
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style:
                          Textutils.timer12.copyWith(fontWeight: FontWeight.w400,fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: R.sH(context, 80)),
                      child: SupportWidget(image:Images.message ,text: 'ابدأ الدردشة الآن للحصول على المساعدة!',),
                    ),
                    SupportWidget(image:Images.email ,text:' راسلنا عبر البريد الإلكتروني للتطبيق',),
                    SupportWidget(image:Images.qustions ,text:' الأسئلة الشائعة (FAQ) و الأكثر تكرارًا .',)

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

