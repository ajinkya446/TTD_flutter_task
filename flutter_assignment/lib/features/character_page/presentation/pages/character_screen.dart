import 'package:flutter/material.dart';
import 'package:flutter_assignment/features/character_page/presentation/widgets/character_bloc_screen.dart';

import '../../../../commons/widgets/widget.dart';
import '../../../../constants/constants.dart';

class CharacterScreen extends StatefulWidget {
  final List<String> characters;

  const CharacterScreen({Key? key, required this.characters}) : super(key: key);

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: titleText(Constants.characters),
      ),
      body: CharacterBodyScreen(
        characters: widget.characters,
      ),
    );
  }
}
