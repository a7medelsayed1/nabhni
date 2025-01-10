import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(top: R.sH(context, 8), bottom: R.sH(context, 8), right: R.sW(context, 14), left: R.sW(context, 16)),
      margin: EdgeInsets.only(
          top: R.sH(context, 16),
          bottom: R.sH(context, 24),
          right: R.sW(context, 16),
          left: R.sW(context, 16)),
      height: R.sH(context, 135),
      width: R.sW(context, double.infinity),
      decoration: BoxDecoration(
          color: Mycolors.primarycolor,
          borderRadius: BorderRadius.circular(R.sR(context, 16))),
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 4),
                    height: R.sH(context, 35),
                    width: R.sW(context, 5),
                    decoration: const BoxDecoration(
                        color: Mycolors.yellow,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: R.sW(context, 178),
                        child: Text(
                          ' الوقت المتبقي قبل انقطاع الكهرباء',softWrap: true,overflow: TextOverflow.visible,
                          style: Textutils.hello18bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(Images.notification,color: Mycolors.yellow,),
                  SizedBox(
                    height: 65,
                    width: 195,
                    child: Text(
                      'باقي على انقطاع الكهرباء  5 دقائق، حيث من المتوقع أن يتم انقطاع الخدمة في تمام الساعة 10:00 صباحًا. يرجى الاستعداد قبل انقطاع التيار.',
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      style: Textutils.fontcolor14bold,
                    ),
                  ),
                ],
              )
            ],
          ),
         const Spacer(),
          const CircleTimerWidget()
        ],
      ),
    );
  }
}

class CircleTimerWidget extends StatefulWidget {
  const CircleTimerWidget({
    super.key,
  });

  @override
  State<CircleTimerWidget> createState() => _CircleTimerWidgetState();
}

class _CircleTimerWidgetState extends State<CircleTimerWidget> {
   final CountDownController _controller =CountDownController();

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: 30*5,
      initialDuration: 0,
      controller: _controller,
      width: R.sW(context, 115),
      height: R.sW(context, 119),
      ringColor: Colors.transparent,
      ringGradient: null,
      fillColor: Colors.white,
      fillGradient: null,
      backgroundColor: Colors.transparent,
      backgroundGradient: null,
      strokeWidth: 8.0,
      strokeCap: StrokeCap.round,
      textStyle: const TextStyle(
          fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
      textFormat: CountdownTextFormat.MM_SS,
      isReverse: true,
      isReverseAnimation: true,
      isTimerTextShown: true,
      autoStart: true,
      onStart: () {
        debugPrint('Countdown Started');
      },
      onComplete: () {
        debugPrint('Countdown Ended');
      },
      onChange: (String timeStamp) {
      
        debugPrint('Countdown Changed $timeStamp');
      },
      timeFormatterFunction: (defaultFormatterFunction, duration) {
        if (duration.inSeconds == 0) {
          return "الخدمه معطله";
        }
        
         else {
          return '10:00 صباحا';
        }
      },
    );
  }
}
