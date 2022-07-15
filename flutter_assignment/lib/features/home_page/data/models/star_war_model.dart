import 'package:flutter_assignment/features/home_page/domain/entities/star_wars_movies_entity.dart';

class StarWarMoviesModel extends StarWarMovieEntity {
  StarWarMoviesModel({required int count, dynamic next, dynamic previous, required result}) : super(count: count, next: next, previous: previous, results: result);

  factory StarWarMoviesModel.fromJson(Map<String, dynamic> json) => StarWarMoviesModel(count: json['count'], next: json['next'], previous: json['previous'], result: json['results']);

  Map<String, dynamic> toJson() {
    return {'count': count, 'next': next, 'previous': previous, 'results': results};
  }
}
