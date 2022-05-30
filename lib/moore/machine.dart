import 'package:flutter/material.dart';

part 'state.dart';

class MooreMachine extends ValueNotifier<LightState> {
  MooreMachine() : super(const LightOff());

  void on() {
    if (value is LightOn) {
      final level = (value as LightOn).level;
      switch (level) {
        case LightLevel.low:
          value = const LightOn(level: LightLevel.medium);
          break;
        case LightLevel.medium:
          value = const LightOn(level: LightLevel.high);
          break;
        case LightLevel.high:
          value = const LightOn(level: LightLevel.low);
          break;
      }
      return;
    }
    value = const LightOn();
  }

  void off() {
    value = const LightOff();
  }
}
