import 'package:flutter_assignment/core/usecase/usecase.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';

// @injectable
class CollectDataFromLocal implements LocalUsecase<List<String>, LocalParams> {
  final StarWarsRepository starWarsRepository;

  CollectDataFromLocal(this.starWarsRepository);

  @override
  Future<List<String>> call(LocalParams params) async {
    return await starWarsRepository.getAllCharacters(params.remoteId);
  }
}

class LocalParams {
  int remoteId;

  LocalParams({required this.remoteId});
}
