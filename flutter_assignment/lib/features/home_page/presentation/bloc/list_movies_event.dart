part of 'list_movies_bloc.dart';

@immutable
abstract class ListMoviesEvent extends Equatable {
  const ListMoviesEvent();
}

class GetMovie extends ListMoviesEvent {
  final StarWarMoviesModel starWarMoviesModel;

  const GetMovie({required this.starWarMoviesModel});

  @override
  List<Object> get props => [starWarMoviesModel];
}
