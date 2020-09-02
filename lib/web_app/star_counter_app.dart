import 'package:flutter/material.dart';
import 'package:fluttercodelabs/web_app/git_hub_counter.dart';
import 'package:fluttercodelabs/web_app/star_counter_provider.dart';
import 'package:provider/provider.dart';

class StarCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<StartCounterProvider>(context);
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 400),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'GitHub Star Counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(height: 24.0),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      labelText: 'Enter a GitHub repository',
                      hintText: 'flutter/flutter',
                    ),
                    onSubmitted: _provider.changeRepository,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: GitHubCounter(
                      repositoryName: _provider.repositoryName,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
