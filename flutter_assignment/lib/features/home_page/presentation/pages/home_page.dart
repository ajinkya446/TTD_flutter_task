import 'package:flutter/material.dart';
import 'package:flutter_assignment/commons/size.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/features/home_page/presentation/bloc/list_movies_bloc.dart';
import 'package:flutter_assignment/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../commons/style.dart';
import '../../domain/usecases/collectDataFromAPI.dart';
import '../movie_list_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late dynamic model;

  @override
  void initState() {
    // model = getMoviesList();
    // print(model);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  // Future getMoviesList() async {
  //   return await BlocProvider.of<MovieListCubit>(context).getMovies(Params(url: Constants.url));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            Constants.movies,
            style: GoogleFonts.acme(
                textStyle: mediumTextStyle(
              textSize: TextSize.s18,
              weight: TextWeight.w400,
              color: Colors.white,
            )),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.format_line_spacing_rounded),
            ),
          ],
        ),
        body: blockBody());
  }

  BlocProvider<MovieListCubit> blockBody() {
    return BlocProvider(
        create: (_) => serviceLocator<MovieListCubit>()..getAPIResponse(),
        child: BlocBuilder<MovieListCubit, MovieListState>(
          builder: (BuildContext context, state) {
            return state == Empty()
                ? Center(child: CircularProgressIndicator())
                : state == Loading()
                    ? Center(child: Text("Fetching data please wait for while"))
                    : state == Error("Error Occurred")
                        ? Center(child: Text("Error Occurred"))
                        : Container(
                            // child: Text(model.count.toString() ?? "No Data"),
                          );
          },
        ));
  }
}

class LoadMoviesScreen extends StatefulWidget {
  const LoadMoviesScreen({Key? key}) : super(key: key);

  @override
  _LoadMoviesScreenState createState() => _LoadMoviesScreenState();
}

class _LoadMoviesScreenState extends State<LoadMoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: BlocBuilder<ListMoviesBloc, ListMoviesState>(
      builder: (BuildContext context, state) {
        return state == Empty()
            ? Center(child: CircularProgressIndicator())
            : state == Loading()
                ? Center(child: Text("Fetching data please wait for while"))
                : Container();
      },
    ));
  }
}
