import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_assignment/injection_container.dart';

import '../../../constants/constants.dart';
import '../domain/usecases/collectDataFromAPI.dart';

part 'movie_list_state.dart';

class MovieListCubit extends Cubit<MovieListState> {
  MovieListCubit() : super(MovieListInitial());

  Future<void> getAPIResponse() async {
    // emit(Empty());
    final result = await serviceLocator<CollectDataFromAPI>.call();
    print(result);
  }
}
