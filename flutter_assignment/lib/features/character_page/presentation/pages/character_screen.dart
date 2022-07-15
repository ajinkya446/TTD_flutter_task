import 'package:flutter/material.dart';
import 'package:flutter_assignment/features/character_page/presentation/cubit/character_list_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../commons/size.dart';
import '../../../../commons/style.dart';
import '../../../../constants/constants.dart';
import '../../../../injection_container.dart';
import '../../../home_page/presentation/widgets/widget.dart';
import '../cubit/character_list_state.dart';

class CharacterScreen extends StatefulWidget {
  final List<String> characters;

  const CharacterScreen({Key? key, required this.characters}) : super(key: key);

  @override
  _CharacterScreenState createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true, title: titleText(Constants.characters)), body: _buildAllCharacters());
  }

  BlocProvider<CharacterListCubit> _buildAllCharacters() {
    return BlocProvider(
        create: (_) => serviceLocator<CharacterListCubit>()..getCharacterDetails(widget.characters),
        child: BlocConsumer<CharacterListCubit, CharacterListState>(
          listener: (ctx, pageState) {},
          builder: (BuildContext context, state) {
            return Container(
                child: state.maybeWhen(
              () => null,
              orElse: () => Center(
                child: Text(Constants.couldNotLoadCharacters,
                    style: GoogleFonts.acme(
                      textStyle: semiBoldTextStyle(textSize: TextSize.s16, color: Colors.white),
                    )),
              ),
              Init: () => const Center(child: CircularProgressIndicator()),
              Loaded: (response) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16, vertical: AppPadding.p12),
                child: GridView.builder(
                    itemCount: response.length,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 350, childAspectRatio: 2 / 2, crossAxisSpacing: 20, mainAxisSpacing: 10),
                    itemBuilder: (gridCtx, index) {
                      return Card(
                          color: Colors.transparent.withOpacity(0.3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.white,
                                  child: subtitleText(response[index].name[0] + response[index].name.split(" ").last[0], textSize: TextSize.s24, color: Colors.black)),
                              subtitleText(response[index].name, textSize: TextSize.s14)
                            ],
                          ));
                    }),
              ),
            ));
          },
        ));
  }
}
