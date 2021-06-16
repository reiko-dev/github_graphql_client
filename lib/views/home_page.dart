import 'package:flutter/material.dart';
import 'package:github_graphql_client/github_oauth_credentials.dart';
import 'package:github_graphql_client/views/github_login.dart';
import 'package:github_graphql_client/views/github_summary.dart';
import 'package:window_to_front/window_to_front.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return GithubLoginWidget(
      builder: (context, client) {
        WindowToFront.activate();
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: GitHubSummary(client: client),
        );
      },
      githubClientId: githubClientId,
      githubClientSecret: githubClientSecret,
      githubScopes: githubScopes,
    );
  }
}
