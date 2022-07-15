import 'package:freezed_annotation/freezed_annotation.dart';

import 'movies_list/movies_list.dart';

part 'star_war_model.freezed.dart';

part 'star_war_model.g.dart';

@freezed
class StarWarMoviesModel with _$StarWarMoviesModel {
  const factory StarWarMoviesModel({required int count, required List<Results> results}) = _StarWarMoviesModel;

  factory StarWarMoviesModel.fromJson(Map<String, dynamic> json) => _$StarWarMoviesModelFromJson(json);

// Map<String, dynamic> toJson() {
//   return {'count': count, 'next': next, 'previous': previous, 'results': results};
// }
}
