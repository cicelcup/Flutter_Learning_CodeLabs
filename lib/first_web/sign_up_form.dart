import 'package:flutter/material.dart';
import 'package:fluttercodelabs/first_web/animated_indicator.dart';
import 'package:fluttercodelabs/general/app_dimensions.dart';
import 'package:fluttercodelabs/general/app_strings.dart';
import 'package:fluttercodelabs/general/app_strings_i18n.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _usernameTextController = TextEditingController();

  double _formProgress = 0;

  void _showWelcomeScreen() =>
      Navigator.pushNamed(context, AppStrings.welcomeScreenRoute);

  //update the progress of the lineal progress indicator
  void _updateProgress() {
    var progress = 0.0;
    var controllers = [
      _firstNameTextController,
      _lastNameTextController,
      _usernameTextController
    ];

    //Check the value for each controller
    for (var controller in controllers) {
      if (controller.value.text.isNotEmpty) progress += 1 / controllers.length;
    }

    setState(() => _formProgress = progress);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: _updateProgress,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedIndicator(value: _formProgress),
          Text(AppStringsI18N.signUpLabel,
              style: Theme.of(context).textTheme.headline4),
          Padding(
            padding: AppDimensions.textFieldPadding,
            child: TextFormField(
              controller: _firstNameTextController,
              decoration: const InputDecoration(
                  hintText: AppStringsI18N.firstNameLabel),
            ),
          ),
          Padding(
            padding: AppDimensions.textFieldPadding,
            child: TextFormField(
              controller: _lastNameTextController,
              decoration:
                  const InputDecoration(hintText: AppStringsI18N.lastNameLabel),
            ),
          ),
          Padding(
            padding: AppDimensions.textFieldPadding,
            child: TextFormField(
              controller: _usernameTextController,
              decoration:
                  const InputDecoration(hintText: AppStringsI18N.userNameLabel),
            ),
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: _formProgress == 1 ? _showWelcomeScreen : null,
            child: const Text(AppStringsI18N.signUpLabel),
          ),
        ],
      ),
    );
  }
}
