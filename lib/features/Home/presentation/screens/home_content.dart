import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Home/presentation/widgets/griditem.dart';
import 'package:nabhni/features/Home/presentation/widgets/location_box.dart';
import 'package:nabhni/features/Home/presentation/widgets/timer_widget.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const LocationBox(),
      const TimerWidget(),
      Padding(
        padding: EdgeInsets.only(
            right: R.sW(context, 16), bottom: R.sH(context, 12)),
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            "خدمات نبهني",
            style: Textutils.title22bold,
          ),
        ),
      ),
      GridViewItem(),
      
    ]);
  }
}
