import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'character_info_state.dart';

class CharacterInfoCubit extends Cubit<CharacterInfoState> {
  CharacterInfoCubit() : super(CharacterInfoInitial());
}
