import 'package:flutter/material.dart';

class MealyPage extends StatelessWidget {
  const MealyPage({Key? key}) : super(key: key);

  static void open(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const MealyPage()),
      );

  @override
  Widget build(BuildContext context) => const Scaffold();
}
