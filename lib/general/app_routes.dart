import 'package:flutter/material.dart';
import 'package:fluttercodelabs/chat/chat_screen.dart';
import 'package:fluttercodelabs/first/favorite_pair_screen.dart';
import 'package:fluttercodelabs/first/first_app_screen.dart';
import 'package:fluttercodelabs/first_web/first_web_app_screen.dart';
import 'package:fluttercodelabs/first_web/welcome_screen.dart';
import 'package:fluttercodelabs/general/app_strings.dart';
import 'package:fluttercodelabs/main/main_screen.dart';
import 'package:fluttercodelabs/web_app/privacy_policy.dart';
import 'package:fluttercodelabs/web_app/star_counter_app.dart';

//Routes of the app
Map<String, Widget Function(BuildContext context)> getAppRoutes() {
  return {
    AppStrings.initRoute: (_) => MainScreen(),
    AppStrings.route1: (_) => FirstAppScreen(),
    AppStrings.route2: (_) => FirstWebAppScreen(),
    AppStrings.favoriteListRoute: (_) => FavoritePairScreen(),
    AppStrings.welcomeScreenRoute: (_) => WelcomeScreen(),
    AppStrings.chatRoute: (_) => ChatScreen(),
    AppStrings.starCounter: (_) => StarCounterApp(),
    AppStrings.webPolicy: (_) => PrivacyPolicy(),
  };
}
