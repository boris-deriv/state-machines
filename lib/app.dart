import 'package:flutter/material.dart';
import 'package:state_machines/harel/page.dart';
import 'package:state_machines/mealy/page.dart';
import 'package:state_machines/moore/page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Builder(builder: (context) {
          return Scaffold(
            appBar: AppBar(title: const Text('State Machines')),
            body: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () => MoorePage.open(context),
                    child: const Text('Moore'),
                  ),
                  ElevatedButton(
                    onPressed: () => MealyPage.open(context),
                    child: const Text('Mealy'),
                  ),
                  ElevatedButton(
                    onPressed: () => HarelPage.open(context),
                    child: const Text('Harel'),
                  )
                ],
              ),
            ),
          );
        }),
      );
}
