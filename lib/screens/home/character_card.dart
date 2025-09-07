import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        title: Row(
          children: [
            Image(
              image: AssetImage(
                'assets/img/vocations/${character.vocation.image}',
              ),
              width: 80,
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledHeadline(character.name),
                StyledText(character.slogan),
              ],
            ),
          ],
        ),
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
