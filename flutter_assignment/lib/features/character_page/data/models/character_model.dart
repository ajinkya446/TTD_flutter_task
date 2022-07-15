import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_model.freezed.dart';

part 'character_model.g.dart';

@freezed
class CharacterModels with _$CharacterModels {
  const factory CharacterModels(String name, String height, String mass, String hair_color, String skin_color, String eye_color, String birth_year, String gender, String homeworld, List<String> films,
      List<dynamic> species, List<String> vehicles, List<String> starships, String created, String edited, String url) = _CharacterModels;

  factory CharacterModels.fromJson(Map<String, dynamic> json) => _$CharacterModelsFromJson(json);
}
