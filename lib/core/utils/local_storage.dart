import 'package:get_storage/get_storage.dart';

const String prefLanguage = 'pref_language';

class LocalStorage {
  /// Write
  void saveLanguage(String language) async {
    await GetStorage().write(prefLanguage, language);
  }

  /// Read
  Future<String> get getLanguageSelected async {
    return await GetStorage().read(prefLanguage)??'en';
  }
}
