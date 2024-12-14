import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.vertical,
        itemBuilder:(context,index)=> Container(
          margin: EdgeInsets.all(8),
          height: R.sH(context, 84),
          width: R.sW(context, 345),
          decoration: BoxDecoration(
              // image: DecorationImage(image: AssetImage("assets/images/Frame 916.png"),fit: BoxFit.cover, ,alignment: Alignment.centerRight),
              color: Mycolors.gridcolor,
              borderRadius: BorderRadius.circular(R.sR(context, 8))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(R.sR(context, 10)),
                    bottomRight: Radius.circular(R.sR(context, 10))),
                child: Image.asset(
                  "assets/images/Frame 916.png",
                  fit: BoxFit.cover,
                  width: R.sW(context, 115),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: R.sW(context, 222),
                      child: Text('''إنهاء أزمة تخفيف الأحمال أهم انجازات "الكهرباء" خلال 2024''',softWrap: true,overflow: TextOverflow.visible,style: Textutils.bodybold16,)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Padding(
                      padding:  EdgeInsets.only(right: R.sW(context, 8),left: R.sW(context, 40)),
                      child: Image.asset("assets/images/source_logo.png",height: 12,width: 40,),
                    ),
                    Text(DateTime.now().toString())
                  ],)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
