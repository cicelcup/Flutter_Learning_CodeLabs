import 'package:flutter/material.dart';
import 'package:fluttercodelabs/general/app_providers.dart';
import 'package:fluttercodelabs/general/app_routes.dart';
import 'package:fluttercodelabs/general/app_strings.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';
import 'package:fluttercodelabs/general/app_theme.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

//App Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: getAppProviders(),
      child: MaterialApp(
        title: AppStringsI18N.appTitle,
        theme: getMainAppTheme(),
        routes: getAppRoutes(),
        initialRoute: AppStrings.initRoute,
      ),
    );
  }
}
