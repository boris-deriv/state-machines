import 'package:flutter/material.dart';
import 'package:state_machines/moore/machine.dart';

class MoorePage extends StatelessWidget {
  const MoorePage({Key? key}) : super(key: key);

  static void open(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const MoorePage()),
      );

  @override
  Widget build(BuildContext context) {
    final machine = MooreMachine();
    return ValueListenableBuilder<LightState>(
      valueListenable: machine,
      builder: (context, light, _) {
        late Color background;
        if (light is LightOn) {
          switch (light.level) {
            case LightLevel.low:
              background = Colors.grey[100]!;
              break;
            case LightLevel.medium:
              background = Colors.grey[50]!;
              break;
            case LightLevel.high:
              background = Colors.white;
              break;
          }
        } else {
          background = Colors.black45;
        }
        return Scaffold(
          backgroundColor: background,
          body: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Current State: $light',
                  style: TextStyle(
                    color: light is LightOff ? Colors.white : Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: machine.on,
                  child: const Text('Light On'),
                ),
                TextButton(
                  onPressed: machine.off,
                  child: const Text('Light Off'),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
