import 'package:flutter/material.dart';
import 'package:github/github.dart';
import 'package:intl/intl.dart';

class GitHubCounter extends StatefulWidget {
  final String repositoryName;

  GitHubCounter({@required this.repositoryName});

  @override
  _GitHubCounterState createState() => _GitHubCounterState();
}

class _GitHubCounterState extends State<GitHubCounter> {
  // The GitHub API client
  GitHub github;

  // The repository information
  Repository repository;

  // A human-readable error when the repository isn't found.
  String errorMessage;

  @override
  void initState() {
    super.initState();
    github = GitHub();

    fetchRepository();
  }

  @override
  void didUpdateWidget(GitHubCounter oldWidget) {
    super.didUpdateWidget(oldWidget);

    // When this widget's [repositoryName] changes,
    // load the Repository information.
    if (widget.repositoryName == oldWidget.repositoryName) {
      return;
    }

    fetchRepository();
  }

  Future<void> fetchRepository() async {
    setState(() {
      repository = null;
      errorMessage = null;
    });

    var repo = await github.repositories
        .getRepository(RepositorySlug.full(widget.repositoryName));
    setState(() {
      repository = repo;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textStyle = textTheme.headline4.apply(color: Colors.green);
    final errorStyle = textTheme.bodyText1.apply(color: Colors.red);
    final numberFormat = NumberFormat.decimalPattern();

    if (errorMessage != null) {
      return Text(errorMessage, style: errorStyle);
    }

    if (widget.repositoryName != null &&
        widget.repositoryName.isNotEmpty &&
        repository == null) {
      return Text('loading...');
    }

    if (repository == null) {
      // If no repository is entered, return an empty widget.
      return SizedBox();
    }

    return Text(
      '${numberFormat.format(repository.stargazersCount)}',
      style: textStyle,
    );
  }
}
