import 'package:flutter/material.dart';
import 'package:flutter_rpg/theme.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final String character;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Text(character, style: Theme.of(context).textTheme.bodyMedium),
        trailing: Icon(
          Icons.arrow_forward,
          size: 16,
          color: AppColors.textColor,
        ),
        onTap: () {
          // Handle card tap
        },
      ),
    );
  }
}
