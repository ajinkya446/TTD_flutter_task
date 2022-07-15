import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';

import '../../../constants/constants.dart';
import '../domain/usecases/collectDataFromAPI.dart';

part 'movie_list_state.dart';

class MovieListCubit extends Cubit<MovieListState> {
  final CollectDataFromAPI getMovies;

  MovieListCubit(this.getMovies) : super(MovieListInitial());

  Future<void> getAPIResponse() async {
    final result = await getMovies(Params(url: Constants.url));
    print(result);
    result.fold((_) => emit(Error("Error Occurred")), (result) {
      if (result == null) {
        emit(Empty());
      } else {
        emit(Loaded(result));
      }
    });
  }
}
