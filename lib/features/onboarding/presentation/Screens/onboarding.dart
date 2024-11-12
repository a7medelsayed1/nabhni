import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:nabhni/features/onboarding/models/onboarding_details.dart';
import 'package:nabhni/features/onboarding/models/onboarding_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabhni/features/onboarding/presentation/widgets/butonwidget.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  List<OnboardingDetails> onboardingDetail = [
    OnboardingDetails(
        image: Images.onboard1,
        body: BodyText.firstbody,
        title: TitleText.firsttitle),
    OnboardingDetails(
        image: Images.onboard2,
        body: BodyText.secondbody,
        title: TitleText.secondtitle),
    OnboardingDetails(
        image: Images.onboard3,
        body: BodyText.thirdbody,
        title: TitleText.thirdtitle),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding:  EdgeInsets.only(top: R.sH(context, 100), left: R.sW(context, 16), right: R.sW(context, 16)),
      child: PageView.builder(
        itemBuilder: (context, index) => Center(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(bottom: R.sH(context, 20)),
                child: SvgPicture.asset(onboardingDetail[index].image),
              ),
              Text(
                onboardingDetail[index].title,
                style: Textutils.logcyan,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: R.sW(context, 16)),
                child: Text(onboardingDetail[index].body,style: Textutils.boardingbody,),
              ),
              SizedBox(height: R.sH(context, 80)),
               Custombutton(text:"Next",route: ()=>context.pushName(Routes.login),),
               Buttonwidget(text:"skip")
            ],
          ),
        ),
        itemCount: onboardingDetail.length,
      ),
    ));
  }
}




