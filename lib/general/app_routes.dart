import 'package:fluttercodelabs/first/favorite_pair_screen.dart';
import 'package:fluttercodelabs/first/first_app_screen.dart';
import 'package:fluttercodelabs/first/provider/first_app_provider.dart';
import 'package:fluttercodelabs/general/app_strings.dart';
import 'package:fluttercodelabs/main/main_screen.dart';
import 'package:provider/provider.dart';

//Routes of the app
getAppRoutes() {
  return {
    AppStrings.initRoute: (_) => MainScreen(),
    AppStrings.route1: (_) {
      return ChangeNotifierProvider(
        create: (context) => FirstAppProvider(),
        child: FirstAppScreen(),
      );
    },
    AppStrings.favoriteListRoute: (_) {
      return ChangeNotifierProvider.value(
        value: FirstAppProvider(),
        child: FavoritePairScreen(),
      );
    },
  };
}
