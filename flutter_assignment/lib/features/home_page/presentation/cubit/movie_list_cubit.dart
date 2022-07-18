import 'package:bloc/bloc.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromLocal.dart';
import 'package:injectable/injectable.dart';

import '../../../../constants/constants.dart';
import '../../domain/usecases/collectDataFromAPI.dart';
import 'movie_list_state.dart';

@injectable
class MovieListCubit extends Cubit<MovieListState> {
  final CollectDataFromAPI getMovies;
  final CollectDataFromLocal getLocalData;

  MovieListCubit(this.getMovies, this.getLocalData) : super(const MovieListState.Empty());

  Future getAPIResponse() async {
    final result = await getMovies(Params(url: Constants.url));
    result.fold((_) => emit(const MovieListState.Error()), (result) {
      if (result == null) {
        emit(const MovieListState.Empty());
      } else {
        emit(MovieListState.Loaded(result));
      }
    });
  }

  Future getCharacterResponse(int id) async {
    final result = await getLocalData(LocalParams(remoteId: id + 1));
    return result;
  }
}
