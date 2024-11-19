import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  final void Function()? onEnd;

  const TimerWidget({super.key, this.onEnd});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Duration>(
      duration: const Duration(seconds: 40),
      tween: Tween(begin: const Duration(seconds: 40), end: Duration.zero),
      onEnd: onEnd,
      builder: (BuildContext context, Duration value, Widget? child) {
        final minutes = value.inMinutes;
        final seconds = value.inSeconds % 60;
        return Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$minutes:$seconds',
                // style: context.text.titleSmall?.copyWith(
                  style: const TextStyle(fontWeight: FontWeight.bold,
                  // color: context.color.onPrimaryContainer,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
