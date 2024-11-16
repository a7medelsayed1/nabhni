import 'package:flutter/material.dart';
import 'package:nabhni/core/Route/routes.dart';
import 'package:nabhni/core/extension/routes.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/Auth/presentation/screens/login_screen.dart';
import 'package:nabhni/features/common/widgets/custom_button.dart';
import 'package:nabhni/features/onboarding/models/onboarding_details.dart';
import 'package:nabhni/features/onboarding/models/onboarding_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nabhni/features/onboarding/presentation/widgets/butonwidget.dart';
import 'package:nabhni/features/onboarding/presentation/widgets/buttonsmallcyan.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

  bool? isLast;

  @override
  Widget build(BuildContext context) {
    var boardcontroller = PageController();
    
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: (){ boardcontroller.previousPage(
                    duration: const Duration(
                      milliseconds: 750,
                    ),
                    curve: Curves.fastLinearToSlowEaseIn,
                  );},),
          actions: [
            TextButton(
                onPressed: () {
                 
                },
                child: Text(
                  "English",
                  style: Textutils.logcyan,
                ))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(
              top: R.sH(context, 20),
              left: R.sW(context, 16),
              right: R.sW(context, 16)),
          child: PageView.builder(
            physics: BouncingScrollPhysics(),
            onPageChanged: (value) {
              print(value);
              if (value == (onboardingDetail.length - 1)) {
                setState(() {
                  isLast = true;
                });
              } else {
                setState(() {
                  isLast = false;
                });
              }
            },
            controller: boardcontroller,
            itemBuilder: (context, index) => Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: R.sH(context, 20)),
                    child: SvgPicture.asset(onboardingDetail[index].image),
                  ),
                  // RichText(text: TextSpan(
                  //   style: Textutils.logintitle,
                  //   children:<TextSpan>[
                  //     TextSpan(text: "نبهني",style: TextStyle(color: Mycolors.mybuttoncolor)),
                      

                  //   ] 
                  // ))
                  Text(
                    onboardingDetail[index].title,
                    style: Textutils.logintitle,
                  )
                  ,Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: R.sW(context, 16)),
                    child: Text(
                      textAlign:TextAlign.center ,
                      onboardingDetail[index].body,
                      style: Textutils.loginsuptitle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: R.sH(context, 24)),
                    child: SmoothPageIndicator(
                      controller: boardcontroller,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.black,
                        activeDotColor: Color(0xffF5821F),
                        dotHeight: 6,
                        expansionFactor: 4,
                        dotWidth: 6,
                        spacing: 5.0,
                      ),
                      count: onboardingDetail.length,
                    ),
                  ),
                  SizedBox(height: R.sH(context, 104)),
                  // Spacer(),
                  Row(
                    children: [
                      Buttonwidget(
                        text: "تخطي",
                        route: () => context.pushName(Routes.login),
                      ),
                      Spacer(),
                      Buttonsmallcyan(
                        text: "التالي",
                        route: () {
                          if (isLast == true) {
                            context.pushName(Routes.login);
                          } else {
                            boardcontroller.nextPage(
                              duration: const Duration(
                                milliseconds: 750,
                              ),
                              curve: Curves.fastLinearToSlowEaseIn,
                            );
                          }
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            itemCount: onboardingDetail.length,
          ),
        ));
  }
}
