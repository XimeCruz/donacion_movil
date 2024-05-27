import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimationInfo {
  final AnimationTrigger trigger;
  final List<Effect> Function() effectsBuilder;

  AnimationInfo({
    required this.trigger,
    required this.effectsBuilder,
  });
}

enum AnimationTrigger {
  onPageLoad,
  onActionTrigger,
}

extension AnimateOnPageLoad on Widget {
  Widget animateOnPageLoad(AnimationInfo animationInfo) {
    return Animate(
      effects: animationInfo.effectsBuilder(),
      child: this,
    );
  }
}
