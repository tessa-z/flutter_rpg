import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledHeadline('Character Creation')),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Icon(Icons.code, size: 40, color: AppColors.primaryColor),
            ),
            Center(child: StyledTitle('Welcome, new player.')),
            Center(
              child: StyledText('Create a name and slogan for your character.'),
            ),
          ],
        ),
      ),
    );
  }
}
