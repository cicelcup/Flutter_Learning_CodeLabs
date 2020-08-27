import 'package:fluttercodelabs/general/app_strings.dart';
import 'package:fluttercodelabs/main/main_screen.dart';

//Routes of the app
getAppRoutes() {
  return {AppStrings.initRoute: (_) => MainScreen()};
}
