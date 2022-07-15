part of 'movie_list_cubit.dart';

abstract class MovieListState extends Equatable {
  const MovieListState();
}

class MovieListInitial extends MovieListState {
  @override
  List<Object> get props => [];
}

class Empty extends MovieListInitial {}

class Loading extends MovieListInitial {}

class Loaded extends MovieListInitial {
  final StarWarMoviesModel response;

  Loaded(this.response);
}

class Error extends MovieListInitial {
  final String message;

  Error(this.message);
}
