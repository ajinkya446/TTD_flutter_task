part of 'list_movies_bloc.dart';

@immutable
abstract class ListMoviesState extends Equatable {
  const ListMoviesState();
}

class ListMoviesInitial extends ListMoviesState {
  @override
  List<Object> get props => [];
}

// class Empty extends ListMoviesState {
//   @override
//   List<Object> get props => [];
// }
//
// class Loading extends ListMoviesState {
//   @override
//   List<Object> get props => [];
// }
//
// class Loaded extends ListMoviesState {
//   final StarWarMoviesModel model;
//
//   const Loaded({required this.model});
//
//   @override
//   List<Object> get props => [model];
// }
//
// class Error extends ListMoviesState {
//   final String message;
//
//   const Error({required this.message});
//
//   @override
//   List<Object> get props => [message];
// }
