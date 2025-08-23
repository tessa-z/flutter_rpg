import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

void onPressed() {
  // Handle button press
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Characters')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            FilledButton(onPressed: onPressed, child: const Text('Create New')),
          ],
        ),
      ),
    );
  }
}
