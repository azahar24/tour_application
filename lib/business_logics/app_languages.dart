import 'package:get/get.dart';

import '../ui/languages/ban.dart';
import '../ui/languages/eng.dart';


class AppLanguages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': eng,
    'bn_BD': ban,
  };
}
