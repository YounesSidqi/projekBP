import 'package:quran_app_flutter/model/daily_model.dart';
import 'package:quran_app_flutter/repository/quran_repo.dart';

class DailyViewModel {
  final QuranRepository _repository = QuranRepository();

  Future<List<DailyDoa>> getListDaily() async =>
      await _repository.getListDaily();
}
