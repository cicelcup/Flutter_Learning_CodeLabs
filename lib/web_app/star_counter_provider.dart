import 'package:flutter/material.dart';
import 'package:github/github.dart';
import 'package:intl/intl.dart';

class StartCounterProvider extends ChangeNotifier {
  var repositoryName;

  //Change the repository name and notify the listeners
  void changeRepositoryName(String value) {
    repositoryName = value;
    notifyListeners();
  }

  //Search the repository and return the string.
  Future<String> searchRepository() async {
    // The GitHub API client.
    var github = GitHub();

    await Future.delayed(Duration(milliseconds: 500));

    // The repository information.
    var repository = await github.repositories
        .getRepository(RepositorySlug.full(repositoryName));

    final numberFormat = NumberFormat.decimalPattern();

    return numberFormat.format(repository.stargazersCount);
  }
}
