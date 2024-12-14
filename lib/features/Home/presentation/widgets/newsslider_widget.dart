import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nabhni/core/responsivity.dart';

class NewsSlider extends StatelessWidget {
  const NewsSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      
      items: [
        Container(
          padding: EdgeInsets.all(R.sW(context, 8)),
          height: R.sH(context, 170),
          width: R.sW(context, 305),
          margin: EdgeInsets.only(
              top: R.sH(context, 26), bottom: R.sW(context, 1)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(R.sR(context, 16)),
              image: DecorationImage(
                  image: AssetImage("assets/images/Frame 910.png"))),
          // child: Image.asset("Assets/images/Frame 910.png",fit:BoxFit.cover ,),
        ),
        Container(
          padding: EdgeInsets.all(R.sW(context, 8)),
          height: R.sH(context, 170),
          width: R.sW(context, 305),
          margin: EdgeInsets.only(
              top: R.sH(context, 26), bottom: R.sW(context, 1)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(R.sR(context, 8)),
              image: DecorationImage(
                  image: AssetImage("assets/images/Frame 910.png"))),
          // child: Image.asset("Assets/images/Frame 910.png",fit:BoxFit.cover ,),
        )
      ],
      options: CarouselOptions(
        height: R.sH(
          context,
          200,
        ),
        autoPlay: true,
        enlargeCenterPage: false,
        enableInfiniteScroll: true,
      ),
    );
  }
}
