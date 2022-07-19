import 'package:flutter/material.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';

import '../../../../../injection_container.dart';
import '../../../../character_page/presentation/pages/character_screen.dart';
import '../../cubit/movie_list_cubit.dart';
import 'movie_info_screen.dart';

class MoviesListWidget extends StatelessWidget {
  final StarWarMoviesModel response;
  final Size size;

  const MoviesListWidget({Key? key, required this.size, required this.response}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: response.results.length,
        itemBuilder: (listCtx, index) {
          return InkWell(
            onTap: () async {
              List<String> characters = [];
              if (response.results[index].characters.isEmpty) {
                characters = await serviceLocator<MovieListCubit>().getCharacterResponse(index);
              } else {
                characters = response.results[index].characters;
              }
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (routeContext) => CharacterScreen(
                      characters: characters,
                      remoteId: index + 1,
                    ),
                  ));
            },
            child: MovieInfoScreen(
              size: size,
              title: response.results[index].title,
              releaseDate: response.results[index].release_date,
              directedBy: response.results[index].director,
            ),
          );
        });
  }
}
