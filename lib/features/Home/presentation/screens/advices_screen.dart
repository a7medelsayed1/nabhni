import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Home/models/advices_card.dart';
import 'package:nabhni/features/Home/presentation/widgets/card_button.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
class AdvicesScreen extends StatelessWidget {
   AdvicesScreen({super.key});
  List<AdvicesCard>cards=[
    AdvicesCard(image: Images.card1, title: 'أبرز الأسئلة الشائعة والإجابات حول التعامل الآمن مع الكهرباء!',  buttontitle: 'استكشف', cardcolor: Mycolors.card1),
    AdvicesCard(image: Images.card2, title: '19 نصيحة تحافظ بيها على سلامتك أثناء التعامل مع الكهرباء!',  buttontitle: 'المزيد', cardcolor: Mycolors.card2),
    AdvicesCard(image: Images.card3, title: 'كيف تتعامل مع الكهرباء بأمان في حالات الطوارئ؟',  buttontitle: 'المزيد', cardcolor: Mycolors.card3),
    AdvicesCard(image: Images.card4, title: 'إجراءات بسيطة لتجنب تلف الأجهزة الكهربائية!', buttontitle: 'المزيد', cardcolor: Mycolors.lightgrey),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MainAppBar(
        leadingWidget: BackButton(),
        title: "ارشادات وتوجيهات",
      ),
  
      
      body: ListView.builder(
        padding: EdgeInsets.only(top: R.sH(context, 12),right: R.sW(context, 20),left: R.sW(context, 20)),
        itemCount: cards.length,
        itemBuilder:(context,index){
         return Container(
          margin: EdgeInsets.symmetric(vertical: R.sH(context, 8)),
          height: R.sH(context, 166),
          width: R.sW(context, 350),
          decoration: BoxDecoration(
                color:cards[index].cardcolor ,
                borderRadius: BorderRadius.circular(R.sR(context, 8))
          ),

          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children:[ Column(children: [
                Text(cards[index].title,style: Textutils.title22bold.copyWith(fontSize: 21),),
                Align(alignment: Alignment.centerRight,
                  child: Text('''"اتبع إرشادات السلامة لحمايتك ومن
حولك من المخاطر الكهربائية."''',style: Textutils.hello14.copyWith(color: Colors.black),),
                ),
                Spacer(),
                Align(alignment: Alignment.bottomRight, child: CardButton(buttontext: cards[index].buttontitle)),
              
              ],),
              // SvgPicture.asset(Images.card1,height: 85,width: 85,)
              Positioned(
                top: 60,
                right: 250,
                child: Image.asset(cards[index].image,height: 95,width: 95,))
              
              ],
            ),
          ),
        );
        }
      ),
    );
  }
}
