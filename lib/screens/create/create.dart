import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _sloganController = TextEditingController();

  void handleSubmit() {
    // Handle form submission logic here
    if (_nameController.text.trim().isEmpty) {
      debugPrint('Name cannot be empty');
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      debugPrint('Slogan cannot be empty');
      return;
    }
    debugPrint(_nameController.text);
    debugPrint(_sloganController.text);
  }

  @override
  void dispose() {
    // Dispose controllers when create screen is no longer 'live'
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

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
            SizedBox(height: 40),

            TextField(
              controller: _nameController,
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
              cursorColor: AppColors.textColor,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                labelText: 'Character name',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _sloganController,
              style: GoogleFonts.kanit(
                textStyle: Theme.of(context).textTheme.bodyMedium,
              ),
              cursorColor: AppColors.textColor,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.chat),
                labelText: 'Character slogan',
              ),
            ),
            SizedBox(height: 40),
            StyledButton(
              onPressed: handleSubmit,
              child: StyledTitle('Create character'),
            ),
          ],
        ),
      ),
    );
  }
}
