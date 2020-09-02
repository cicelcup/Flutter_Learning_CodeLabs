import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttercodelabs/web_app/star_counter_provider.dart';
import 'package:provider/provider.dart';

class GitHubCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Provider variable.
    final _provider = Provider.of<StartCounterProvider>(context);
    //Style for the result.
    final textStyle =
        Theme.of(context).textTheme.headline4.apply(color: Colors.green);
    //Style for the error.
    final errorStyle =
        Theme.of(context).textTheme.bodyText1.apply(color: Colors.red);

    ///Future Builder to search the repository.
    ///
    ///Search only if the repository name is different than null
    return FutureBuilder(
        future: _provider.repositoryName != null
            ? _provider.searchRepository()
            : null,
        builder: (context, AsyncSnapshot snapShot) {
          print(snapShot);

          //Check each case of the snapShot
          switch (snapShot.connectionState) {
            //Show the progress indicator.
            case ConnectionState.waiting:
              return ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200.0),
                child: LinearProgressIndicator(),
              );

            //Check the snapshot
            case ConnectionState.done:
              if (snapShot.hasError || !snapShot.hasData) {
                return Text('Error: ${_provider.repositoryName} not found it!',
                    style: errorStyle);
              }
              return Text(snapShot.data, style: textStyle);

            //Show sizeBox as default value.
            default:
              return SizedBox();
          }
        });
  }
}
