import 'package:quran_app_flutter/model/evening_model.dart';
import 'package:quran_app_flutter/repository/quran_repo.dart';

class EveningViewModel {
  final QuranRepository _repository = QuranRepository();

  Future<List<Evening>> getListEvening() async =>
      await _repository.getListEvening();
}
