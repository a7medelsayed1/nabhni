import 'package:flutter/material.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Home/presentation/widgets/news_widget.dart';
import 'package:nabhni/features/Home/presentation/widgets/newsslider_widget.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(
          leadingWidget: BackButton(),
          title: "الاخبار والتحديثات",
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NewsSlider(),
             Divider(
              endIndent: 75,
              indent: 75,
            ),
            NewsWidget()
          ],
        ),
      ),
    );
  }
}

