import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Home/presentation/widgets/faq_widget.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';

class Faqustion extends StatelessWidget {
  const Faqustion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const MainAppBar(
        title: 'الأسئلة الشائعه',
        leadingWidget: BackButton(),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('أبرز الأسئلة الشائعة والإجابات حول التعامل الآمن مع الكهرباء!',softWrap: true,overflow: TextOverflow.visible,maxLines: 2,style: Textutils.title22bold,),
              FaqWidget(text:  'ما هي أهم إرشادات السلامة عند استخدام الأجهزة الكهربائية في المنزل؟',),
              FaqWidget(text:  'ما هي العلامات التي تشير إلى وجود مشكلة كهربائية في المنزل؟',),
              FaqWidget(text:  'هل من الآمن استخدام مشترك كهربائي لتوصيل عدة أجهزة؟',),
              FaqWidget(text: 'ما هي أفضل طريقة لفصل التيار الكهربائي أثناء الطوارئ؟',),
              FaqWidget(text:  'ما هي أهم الاحتياطات الواجب اتباعها عند استخدام الأجهزة الكهربائية في الهواء الطلق؟',),
              FaqWidget(text:  'ما هي الأخطاء الشائعة التي يقع فيها الأشخاص عند التعامل مع الأجهزة الكهربائية؟',),
              FaqWidget(text:  'ما هي الطرق الفعالة لتفادي الصدمات الكهربائية أثناء استخدام الأجهزة الكهربائية؟',),
              FaqWidget(text:  'ما هي أهم الخطوات للقيام بصيانة دورية للأجهزة الكهربائية في المنزل؟',),
          
            ],
          ),
        ),
      ),
    );
  }
}

