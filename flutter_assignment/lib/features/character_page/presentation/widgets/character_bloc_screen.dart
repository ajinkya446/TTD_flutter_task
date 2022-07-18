import 'package:flutter/material.dart';
import 'package:flutter_assignment/features/character_page/presentation/widgets/character_gridview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../commons/widgets/size.dart';
import '../../../../commons/widgets/widget.dart';
import '../../../../constants/constants.dart';
import '../../../../injection_container.dart';
import '../cubit/character_list_cubit.dart';
import '../cubit/character_list_state.dart';

class CharacterBodyScreen extends StatelessWidget {
  final List<String> characters;
  final int remoteId;

  const CharacterBodyScreen({Key? key, required this.characters, required this.remoteId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => serviceLocator<CharacterListCubit>()..getCharacterDetails(characters, this.remoteId),
        child: BlocConsumer<CharacterListCubit, CharacterListState>(
          listener: (ctx, pageState) {},
          builder: (BuildContext context, state) {
            return Container(
                child: state.maybeWhen(
              () => null,
              orElse: () => Center(
                  child: subtitleText(
                Constants.couldNotLoadCharacters,
                textSize: TextSize.s16,
              )),
              Init: () => const Center(child: CircularProgressIndicator()),
              Loaded: (response) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p16,
                  vertical: AppPadding.p12,
                ),
                child: CharacterGridView(response: response),
              ),
            ));
          },
        ));
  }
}
