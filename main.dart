import 'package:flutter/material.dart';
import 'package:intro/pages/newsList.dart';
import 'package:intro/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

void main() => runApp (App());


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "fresh news",
      home: ChangeNotifierProvider(
        builder: (context) => NewsArticleListViewMOdel(),
        child: NewsList()
      )
    );
  }
}
  