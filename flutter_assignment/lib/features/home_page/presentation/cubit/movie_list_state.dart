import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/star_war_model.dart';

part 'movie_list_state.g.dart';
part 'movie_list_state.freezed.dart';

@freezed
class MovieListState with _$MovieListState {
  const factory MovieListState() = _MovieListState;
  const factory MovieListState.Empty() = _MovieListStateEmpty;
  const factory MovieListState.Error() = _MovieListStateError;
  const factory MovieListState.Loaded(StarWarMoviesModel response) =
  _MovieListStateListReceived;

  factory MovieListState.fromJson(Map<String, dynamic> json) =>
      _$MovieListStateFromJson(json);
}
