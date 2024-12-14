import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
            text: TextSpan(children: <TextSpan>[
          TextSpan(text: 'لو عاوز تعرف اكتر؟', style: Textutils.bodybold16),
          TextSpan(text: ' تابعنا علي', style: Textutils.suptitlebold16.copyWith(fontFamily: 'Zain'))
        ])),
        Container(
          margin: EdgeInsets.only(top: R.sH(context, 8)),
          width: R.sW(context, 200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
            children: [
            Image.asset(Images.face),
              Image.asset(Images.x), Image.asset(Images.linkedin),Image.asset(Images.insta),
          ],),
        ),
      ],
    );
  }
}


