import 'package:keop/core/constants/string_constants.dart';

String greeting() {
  var greet = StringConstants.strGoodMorning;
  final now = DateTime.now();
  if (now.hour >= 12 && now.hour < 16) {
    greet = StringConstants.strGoodAfternoon;
  } else if (now.hour >= 16) {
    greet = StringConstants.strGoodEvening;
  } else if (now.hour >= 20) {
    greet = StringConstants.strGoodNight;
  }
  return greet;
}
