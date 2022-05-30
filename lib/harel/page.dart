import 'package:flutter/material.dart';

class HarelPage extends StatelessWidget {
  const HarelPage({Key? key}) : super(key: key);

  static void open(BuildContext context) => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const HarelPage()),
      );

  @override
  Widget build(BuildContext context) => const Scaffold();
}
