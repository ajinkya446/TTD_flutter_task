import 'package:flutter/material.dart';
import 'package:flutter_assignment/commons/size.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/features/character_page/presentation/pages/character_screen.dart';
import 'package:flutter_assignment/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../commons/style.dart';
import '../cubit/movie_list_cubit.dart';
import '../cubit/movie_list_state.dart';

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
    Size size = MediaQuery.of(context).size;
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
        body: blockBody(size));
  }

  BlocProvider<MovieListCubit> blockBody(Size size) {
    return BlocProvider(
        create: (_) => serviceLocator<MovieListCubit>()..getAPIResponse(),
        child: BlocConsumer<MovieListCubit, MovieListState>(
          listener: (ctx, pageState) {},
          builder: (BuildContext context, state) {
            return Container(
              child: state.maybeWhen(() => null,
                  orElse: () => Center(
                        child: Text("Try again later",
                            style: GoogleFonts.acme(
                              textStyle: semiBoldTextStyle(textSize: TextSize.s16, color: Colors.white),
                            )),
                      ),
                  Empty: () => const Center(child: CircularProgressIndicator()),
                  Loaded: (response) => ListView.builder(
                      shrinkWrap: true,
                      itemCount: response.results.length,
                      itemBuilder: (listCtx, index) {
                        return InkWell(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (routeContext) => CharacterScreen(characters: response.results[index].characters))),
                          child: Container(
                            height: size.height * 0.13,
                            width: size.width * 0.67,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: AppPadding.p16),
                                  child: Image.asset("assets/images/image.png", height: size.height * 0.1),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: AppPadding.p12),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(response.results[index].title,
                                          style: GoogleFonts.acme(
                                            textStyle: semiBoldTextStyle(textSize: TextSize.s18, color: Colors.white),
                                          )),
                                      Text("Release Date- ${response.results[index].release_date}",
                                          style: GoogleFonts.aBeeZee(
                                            textStyle: semiBoldTextStyle(textSize: TextSize.s12, color: Colors.white),
                                          )),
                                      Text("Directed By- ${response.results[index].director}",
                                          style: GoogleFonts.aBeeZee(
                                            textStyle: semiBoldTextStyle(textSize: TextSize.s12, color: Colors.white),
                                          )),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  icon: const Icon(Icons.favorite),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: AppMargin.m16, vertical: 8),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(AppMargin.m16), color: Colors.transparent.withOpacity(0.6)),
                          ),
                        );
                      })),
            );
          },
        ));
  }
}
