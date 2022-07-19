import 'package:flutter/material.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromAPI.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../commons/widgets/size.dart';
import '../../../../../commons/widgets/widget.dart';
import '../../../../../constants/constants.dart';
import '../../../../../injection_container.dart';
import '../../cubit/movie_list_cubit.dart';
import '../../cubit/movie_list_state.dart';
import 'movies_list_widget.dart';

class HomePageBody extends StatelessWidget {
  final Size size;

  const HomePageBody({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => serviceLocator<MovieListCubit>()..getAPIResponse(),
        child: BlocConsumer<MovieListCubit, MovieListState>(
          listener: (ctx, pageState) {},
          builder: (BuildContext context, state) {
            return Container(
                child: state.maybeWhen(() => null,
                    orElse: () => Center(
                        child: TextButton(
                            onPressed: () async {
                              final response = await CollectDataFromAPI(serviceLocator<StarWarsRepository>()).call(Params(url: Constants.url));
                              print(response);
                            },
                            child: subtitleText(Constants.tryAgainLater, textSize: TextSize.s16))),
                    Empty: () => const Center(child: CircularProgressIndicator()),
                    Loaded: (response) => MoviesListWidget(size: size, response: response)));
          },
        ));
  }
}
