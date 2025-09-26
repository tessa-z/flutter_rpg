import 'package:flutter/material.dart';
import 'package:flutter_rpg/theme.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({super.key, required this.child, required this.onPressed});

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.primaryColor, AppColors.primaryAccent],
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: child,
      ),
    );
  }
}
