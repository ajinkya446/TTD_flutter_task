/// Entity class for communicate with use cases and repositories
class StarWarMovieEntity {
  final int count;
  final int? next;
  final int? previous;
  final List<dynamic> results;

  StarWarMovieEntity({required this.count, this.next, this.previous, required this.results}) : super();
}
