import 'package:get/get.dart';
import 'package:iam_hungry2/core/localization/ar.dart';
import 'package:iam_hungry2/core/localization/en.dart';

class Translation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
