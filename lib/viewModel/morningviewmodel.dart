import 'package:quran_app_flutter/model/morning_model.dart';
import 'package:quran_app_flutter/repository/quran_repo.dart';

class MorningViewModel {
  final QuranRepository _repository = QuranRepository();

  Future<List<Morning>> getListMorning() async =>
      await _repository.getListMorning();
}
