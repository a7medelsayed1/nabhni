import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
      margin: EdgeInsets.only(
          top: R.sH(context, 16),
          bottom: R.sH(context, 24),
          right: R.sW(context, 16),
          left: R.sW(context, 16)),
      height: R.sH(context, 131),
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
              SizedBox(
                height: 65,
                width: 186,
                child: Text(
                  'باقي على انقطاع الكهرباء 8 ساعات و 6 دقائق، حيث من المتوقع أن يتم انقطاع الخدمة تمام الساعة 10:00 صباحًا. يرجى الاستعداد قبل انقطاع التيار.',
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  style: Textutils.timer12,
                ),
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

class CircleTimerWidget extends StatelessWidget {
  const CircleTimerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: Duration.hoursPerDay,
      initialDuration: 0,
      controller: CountDownController(),
      width: R.sW(context, 115),
      height: R.sW(context, 119),
      ringColor: Colors.grey[300]!,
      ringGradient: null,
      fillColor: Colors.transparent,
      fillGradient: null,
      backgroundColor: Colors.transparent,
      backgroundGradient: null,
      strokeWidth: 8.0,
      strokeCap: StrokeCap.round,
      textStyle: const TextStyle(
          fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
      textFormat: CountdownTextFormat.S,
      isReverse: false,
      isReverseAnimation: false,
      isTimerTextShown: true,
      autoStart: false,
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
          return "06 : 8";
        } else {
          return Function.apply(defaultFormatterFunction, [duration]);
        }
      },
    );
  }
}
