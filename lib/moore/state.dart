part of 'machine.dart';

abstract class LightState {
  const LightState();

  @override
  String toString() => '$runtimeType';
}

class LightOff extends LightState {
  const LightOff();
}

class LightOn extends LightState {
  const LightOn({this.level = LightLevel.low});
  final LightLevel level;

  @override
  String toString() => 'LightOn::${level.name}';
}

enum LightLevel { low, medium, high }
