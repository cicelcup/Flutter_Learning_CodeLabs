import 'package:flutter/material.dart';
import 'package:fluttercodelabs/general/app_strings.dart';
import 'package:fluttercodelabs/web_app/git_hub_counter.dart';
import 'package:fluttercodelabs/web_app/star_counter_provider.dart';
import 'package:provider/provider.dart';

class StarCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    onSubmitted: Provider.of<StartCounterProvider>(context,
                            listen: false)
                        .changeRepositoryName,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: GitHubCounter(),
                  ),
                  SizedBox(height: 8.0),
                  FlatButton(
                    color: Colors.transparent,
                    textColor: Colors.blue,
                    child: Text('Privacy Policy'),
                    onPressed: () =>
                        Navigator.pushNamed(context, AppStrings.webPolicy),
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
