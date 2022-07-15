import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromAPI.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromLocal.dart';

part 'list_movies_event.dart';

part 'list_movies_state.dart';

// @injectable
class ListMoviesBloc extends Bloc<ListMoviesEvent, ListMoviesState> {
  /// Dependencies Inversion
  final CollectDataFromAPI collectDataFromAPI;
  final CollectDataFromLocal collectDataFromLocal;

  ListMoviesBloc({required this.collectDataFromAPI, required this.collectDataFromLocal}) : super(ListMoviesInitial());

  // TODO: implement initialState
  // ListMoviesState get initialState => Empty();
  //
  // Stream<ListMoviesState> mapEventToState(ListMoviesEvent event) async* {
  //   // TODO: implement mapEventToState
  //   // TODO: Adding Business Logic
  //   try {
  //     yield Loading();
  //     if (event is GetMovie) {
  //       if (event.starWarMoviesModel.count != 0) {
  //         yield Loaded(model: event.starWarMoviesModel);
  //       }
  //     }
  //   } catch (e) {
  //     yield const Error(message: Constants.serverFailureMessage);
  //     // throw ServerFailure(Constants.serverFailureMessage);
  //   }
  // }
}
