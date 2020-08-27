import 'package:flutter/material.dart';
import 'package:fluttercodelabs/first/provider/first_app_provider.dart';
import 'package:provider/provider.dart';

class FavoritePairScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _favoriteList = context
        .select<FirstAppProvider, Set>((provider) => provider.savedWords);

    return Text("${_favoriteList.length}");
  }
}
