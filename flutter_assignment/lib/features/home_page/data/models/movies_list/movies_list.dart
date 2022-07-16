import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_list.freezed.dart';

part 'movies_list.g.dart';

@freezed
class Results with _$Results {
  const factory Results(String title, int episode_id, String opening_crawl, String director, String producer, String release_date, List<String> characters, List<String> planets,
      List<String> starships, List<String> vehicles, List<String> species, String created, String edited, String url) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) => _$ResultsFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "episode_id": episode_id,
      "opening_crawl": opening_crawl,
      "director": director,
      "producer": producer,
      "release_date": release_date,
      "characters": characters,
      "planets": planets,
      "starships": starships,
      "vehicles": vehicles,
      "species": species,
      "created": created,
      "edited": edited,
      "url": url
    };
  }
}
