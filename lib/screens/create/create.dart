import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

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
      // show error dialog
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      // show error dialog
      return;
    }

    characters.add(
      Character(
        id: uuid.v4(),
        name: _nameController.text.trim(),
        slogan: _sloganController.text.trim(),
        vocation: selectedVocation,
      ),
    );
  }

  @override
  void dispose() {
    // Dispose controllers when create screen is no longer 'live'
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  Vocation selectedVocation = Vocation.raider;

  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledHeadline('Character Creation')),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // welcome
              Center(
                child: Icon(
                  Icons.code,
                  size: 40,
                  color: AppColors.primaryColor,
                ),
              ),
              Center(child: StyledTitle('Welcome, new player.')),
              Center(
                child: StyledText(
                  'Create a name and slogan for your character.',
                ),
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
              SizedBox(height: 10),

              // vocation
              Center(
                child: Icon(
                  Icons.code,
                  size: 40,
                  color: AppColors.primaryColor,
                ),
              ),
              Center(child: StyledTitle('Choose a vocation.')),
              Center(
                child: StyledText('This determines your available skills.'),
              ),
              SizedBox(height: 30),

              VocationCard(
                onTap: updateVocation,
                vocation: Vocation.raider,
                isSelected: selectedVocation == Vocation.raider,
              ),
              VocationCard(
                onTap: updateVocation,
                vocation: Vocation.junkie,
                isSelected: selectedVocation == Vocation.junkie,
              ),
              VocationCard(
                onTap: updateVocation,
                vocation: Vocation.ninja,
                isSelected: selectedVocation == Vocation.ninja,
              ),
              VocationCard(
                onTap: updateVocation,
                vocation: Vocation.wizard,
                isSelected: selectedVocation == Vocation.wizard,
              ),

              Center(
                child: Icon(
                  Icons.code,
                  size: 40,
                  color: AppColors.primaryColor,
                ),
              ),
              Center(child: StyledTitle('Good luck.')),
              Center(child: StyledText('Enjoy the journey...')),
              SizedBox(height: 30),

              SizedBox(height: 10),

              StyledButton(
                onPressed: handleSubmit,
                child: StyledTitle('Create character'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
