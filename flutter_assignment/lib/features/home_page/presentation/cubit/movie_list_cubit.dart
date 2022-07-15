import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../constants/constants.dart';
import '../../domain/usecases/collectDataFromAPI.dart';
import 'movie_list_state.dart';

@injectable
class MovieListCubit extends Cubit<MovieListState> {
  final CollectDataFromAPI getMovies;

  MovieListCubit(this.getMovies) : super(const MovieListState.Empty());

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
}
