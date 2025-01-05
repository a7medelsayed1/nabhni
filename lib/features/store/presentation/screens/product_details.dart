import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/store/presentation/widgets/more_button.dart';
import 'package:nabhni/features/store/presentation/widgets/product_details_bottom.dart';
import 'package:nabhni/features/store/presentation/widgets/rating_stars.dart';
import 'package:nabhni/features/store/presentation/widgets/store_item_horizontal.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

List<String> productimages = [
  Images.generator4x,
  Images.generator4x,
  Images.generator4x,
  Images.generator4x,
];
int imageindex = 0;
bool selected = false;
List<bool> clicked = List.generate(4, (e) => false);
bool bottonclicked=true;
class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: const MainAppBar(
        title: 'تفاصيل المنتج',
        leadingWidget: BackButton(),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: R.sW(context, 20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: R.sH(context, 232),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                  height: R.sH(context, 232),
                                  width: R.sW(context, 50),
                                  child: ListView.builder(
                                      itemCount: productimages.length,
                                      itemBuilder: (context, index) => GestureDetector(
                                            onTap: () {
                                              imageindex = index;
                                              clicked[index] = !clicked[index];
                                              print(index);
                                              setState(() {});
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(R.sP(context, 3)),
                                              margin: EdgeInsets.only(
                                                  top: R.sH(context, 4)),
                                              height: R.sH(context, 50),
                                              width: R.sW(context, 50),
                                              decoration: BoxDecoration(
                                                  color: clicked[index]
                                                      ? Mycolors.mediumcyan
                                                      : Colors.transparent,
                                                  borderRadius: BorderRadius.circular(
                                                      R.sR(context, 12)),
                                                  border: Border.all(
                                                      color: Mycolors.buttongrey)),
                                              child: Image.asset(
                                                productimages[index],
                                              ),
                                            ),
                                          )))
                            ],
                          ),
                          SizedBox(
                            height: R.sH(context, 232),
                            width: R.sW(context, 223),
                            child: Image.asset(
                              productimages[imageindex],
                              fit: BoxFit.contain,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: R.sH(context, 42),
                                width: R.sW(context, 42),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(R.sR(context, 17)),
                                    border: Border.all(color: Mycolors.buttongrey)),
                                child: Image.asset(
                                  Images.heart,
                                  color: Mycolors.titlecolor,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: R.sH(context, 8)),
                                height: R.sH(context, 42),
                                width: R.sW(context, 42),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(R.sR(context, 17)),
                                    border: Border.all(color: Mycolors.buttongrey)),
                                child: Image.asset(Images.share),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SmoothIndicator(
                        effect: const WormEffect(
                            activeDotColor: Colors.black, dotHeight: 7, dotWidth: 7),
                        offset: imageindex.toDouble(),
                        count: productimages.length,
                        size: const Size(1, 1),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text('منتجات من توتال',style: Textutils.fontcolor14w400.copyWith(color: Mycolors.suptitlecolor),),
                    Container(
                      margin: EdgeInsets.only(bottom: R.sH(context, 4)),
                      height: R.sH(context, 46),
                      width: R.sW(context, 353),
                      child: Text('مولد كهربائي بالبنزين 3000 دورة في الدقيقة من توتال تولز، موديل TP165006',softWrap: true,overflow: TextOverflow.visible,style: Textutils.title22bold,),
              
                    ),
              
                    RatingStars(),
                    Text('EGP 29,959.00',style: Textutils.title22bold,),
                    Row(
                      children: [
                        Text('EGP 30,959.00',style: Textutils.fontcolor14w400.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: Mycolors.suptitlecolor
                        ),),
                        SizedBox(width: 5,),
                        Text('(متضمن القيمة المضافة)',style: Textutils.suptitlebold16.copyWith(fontWeight: FontWeight.w400),)
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: R.sH(context, 16),bottom: R.sH(context, 16)),
                      height: R.sH(context, 47),
                      width: R.sW(context, 198),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Mycolors.primarycolor
                        ),
                        borderRadius: BorderRadius.circular(R.sR(context, 12))
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bottonclicked=true;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.all(R.sP(context, 3)),
                              height: R.sH(context, 31),
                              width: R.sW(context, 91),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(R.sR(context, 8)),
                                color: bottonclicked? Mycolors.primarycolor:Colors.transparent
                              ),
                              child: Center(child: Text('المواصفات',style: Textutils.hello18bold.copyWith(fontWeight: FontWeight.bold,color: !bottonclicked? Mycolors.titlecolor:Colors.white),)),
                            ),
                          ),
                         GestureDetector(
                          onTap: () {
                            setState(() {
                              bottonclicked=false;
                            });
                          },
                           child: Container(
                              margin: EdgeInsets.all(R.sP(context, 3)),
                              height: R.sH(context, 31),
                              width: R.sW(context, 91),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(R.sR(context, 8)),
                                color:bottonclicked? Colors.transparent:Mycolors.primarycolor
                              ),
                              child: Center(child: Text('تقييمات',style: Textutils.hello18bold.copyWith(fontWeight: FontWeight.bold,color: bottonclicked? Mycolors.titlecolor:Colors.white),)),
                            ),
                         ),
              
                        ],
                      ),
                    ),
                    bottonclicked?
                    SizedBox(
                      height: R.sH(context, 215),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context,index)=>Container(
                        padding: EdgeInsets.symmetric(horizontal: R.sW(context, 4)),  
                        height: R.sH(context, 38),
                        color: index%2==0?Mycolors.mediumcyan:Colors.transparent,
                        child: Row(children: [
                          Expanded(child: Text('العلامه التجاريه',style: Textutils.suptitlebold16.copyWith(fontWeight: FontWeight.w400),)),
                          Expanded(child: Text('توتال',style: Textutils.bodybold16.copyWith(fontWeight: FontWeight.w400),)),
                        ],),
                      )),
                    ):Container(),
                    MoreButton(text: 'عرض المزيد',onPressed: () {
                      
                    },h: 40,w: 353,r: 6,),
                    SizedBox(height: R.sH(context, 10),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('منتجات من توتال ايضا',style: Textutils.title22bold,),
                      TextButton(onPressed: (){}, child: Text('مشاهده الكل',style:Textutils.fontcolor14w400 ,)),
                    
                      
                    ],),
                                    SizedBox(height: R.sH(context, 10),),
            
                    Container(
                         margin: EdgeInsets.only(bottom: R.sH(context, 8)),
                            height: R.sH(context, 292),
                        child: ListView.builder(
                          shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                             scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) => StoreItemHorizontal())),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('مقترحة لك أيضًا',style: Textutils.title22bold,),
                      TextButton(onPressed: (){}, child: Text('مشاهده الكل',style:Textutils.fontcolor14w400 ,)),
                    
                      
                    ],),
                                    SizedBox(height: R.sH(context, 10),),
            
                    Container(
                         margin: EdgeInsets.only(bottom: R.sH(context, 8)),
                            height: R.sH(context, 292),
                        child: ListView.builder(
                          shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                             scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) => StoreItemHorizontal())),
                  ],
                  
                ),
              ),
            ),
          ),
          ProductDetailsBottom()
        ],
      ),
    );
  }
}

