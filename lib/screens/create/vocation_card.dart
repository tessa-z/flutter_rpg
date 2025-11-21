import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class VocationCard extends StatelessWidget {
  const VocationCard({
    super.key,
    required this.updateVocation,
    required this.vocation,
  });

  final void Function(Vocation) updateVocation;
  final Vocation vocation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        updateVocation(vocation);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image(
                image: AssetImage('assets/img/vocations/${vocation.image}'),
                width: 80,
                height: 80,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StyledTitle(vocation.title),
                      StyledText(vocation.description),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
