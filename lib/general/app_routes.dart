import 'package:fluttercodelabs/first/first_app.dart';
import 'package:fluttercodelabs/first/provider/first_app_provider.dart';
import 'package:fluttercodelabs/general/app_strings.dart';
import 'package:fluttercodelabs/main/main_screen.dart';
import 'package:provider/provider.dart';

//Routes of the app
getAppRoutes() {
  return {
    AppStrings.initRoute: (_) => MainScreen(),
    AppStrings.route1: (_) => ChangeNotifierProvider(
          create: (context) => FirstAppProvider(),
          child: FirstApp(),
        ),
  };
}
