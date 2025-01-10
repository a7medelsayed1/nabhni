import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:nabhni/features/store/presentation/widgets/discount_widget.dart';
import 'package:nabhni/features/store/presentation/widgets/shipping_tax.dart';

class CheckOutBodyWidget extends StatelessWidget {
  const CheckOutBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: R.sW(context, 20),left: R.sW(context, 20),bottom: R.sH(context, 20),),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('عناوين الشحن',style: Textutils.title22bold,),
            Text('يمكنك الضغط على “ تغيير “ من أجل تغيير أو استكمال الببيانات.',style: Textutils.fontcolor14w400,),
            const PersonalDetails(),
            Text('خدمات الشحن',style: Textutils.title22bold,),
            const ShipingTax(),
            Text('المراجعه و الدفع',style: Textutils.title22bold,),
            DiscountWidget(discount: true,),
            Custombutton(text: 'التالي', route: ()=>context.pushName(Routes.placeorder)),
        
        
        
          ],
        ),
      ),
    );
  }
}



class PersonalDetails extends StatelessWidget {
  const PersonalDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: R.sW(context, 8)),
      margin: EdgeInsets.symmetric(vertical: R.sH(context, 12)),
      height: R.sH(context, 159),
      width: R.sW(context, 353),
      decoration: BoxDecoration(
        border: Border.all(
          color: Mycolors.primarycolor,
        ),
        borderRadius: BorderRadius.circular(R.sR(context, 12))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OrderData(title: 'عنوان الشحن الإفتراضي',suptitle:'المنصورة قسم اول-شارع جيهان' ,texticon: true,image: Images.locationIcon,),
          OrderData(title: 'اسم المستلم',suptitle:'احمد السيد السعيد ابراهيم' ,texticon: false,image: Images.person,),
          OrderData(title: 'رقم الهاتف',suptitle:'201000948891+' ,texticon: false,image: Images.mobile,)
    
        ],
      ),
    );
  }
}

class OrderData extends StatelessWidget {
   OrderData({
    super.key,
    required this.title,
    required this.suptitle,
    required this.image,
    required this.texticon
  });
   final String title,suptitle,image;
  final bool texticon;
  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(image,color: Colors.black,height: 20,),
                SizedBox(width: R.sW(context, 3),),
                Text(title,style: Textutils.bodybold16,),
              ],
            ),
            Transform.translate(
              offset: Offset(R.sW(context, -20), 0),
              child: Text(suptitle,style: Textutils.fontcolor14w400,))
          ],
        ),
        texticon? TextButton(onPressed: (){}, child: Text("تغيير",style: Textutils.logcyan,)):const SizedBox()
      ],
    );
  }
}