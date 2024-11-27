import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Home/presentation/widgets/custom_appbar.dart';
import 'package:nabhni/features/Home/presentation/widgets/griditem.dart';
import 'package:nabhni/features/Home/presentation/widgets/location_box.dart';
import 'package:nabhni/features/Home/presentation/widgets/timer_widget.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Column(children: [
        const LocationBox(),
        const TimerWidget(),
        Padding(
          padding: EdgeInsets.only(
              right: R.sW(context, 16), bottom: R.sH(context, 12)),
          child: Align(
            alignment: Alignment.centerRight,
            child: RichText(
              text: TextSpan(
                children:<TextSpan>[
                  TextSpan(text: 'خدمات ',style: Textutils.title22bold),
                  TextSpan(text: 'نبهني',style: Textutils.title22bold.copyWith(color: Mycolors.primarycolor))
                ] 
      
      
              ),
              
            ),
          ),
        ),
        GridViewItem(),
        
      ]),
    );
  }
}
