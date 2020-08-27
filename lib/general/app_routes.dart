import 'package:fluttercodelabs/first/first_app.dart';
import 'package:fluttercodelabs/general/app_strings.dart';
import 'package:fluttercodelabs/main/main_screen.dart';

//Routes of the app
getAppRoutes() {
  return {
    AppStrings.initRoute: (_) => MainScreen(),
    AppStrings.route1: (_) => FirstApp(),
  };
}
