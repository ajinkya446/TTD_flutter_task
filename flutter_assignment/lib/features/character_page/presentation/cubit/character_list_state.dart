import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/character_model.dart';

part 'character_list_state.freezed.dart';
part 'character_list_state.g.dart';

@freezed
class CharacterListState with _$CharacterListState {
  const factory CharacterListState() = _CharacterListState;

  const factory CharacterListState.Init() = _CharacterListStateEmpty;

  const factory CharacterListState.Error() = _CharacterListStateError;

  const factory CharacterListState.Loaded(List<CharacterModels> response) = _CharacterListStateListReceived;

  factory CharacterListState.fromJson(Map<String, dynamic> json) => _$CharacterListStateFromJson(json);
}
