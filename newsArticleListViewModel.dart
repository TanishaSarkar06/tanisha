

import 'package:flutter/widgets.dart';
import 'package:intro/viewmodels/newsArticleViewModel.dart';

class NewsArticleListViewMOdel extends ChangeNotifier {

  List<NewsArticleViewMOdel> articles = List<NewsArticleViewMOdel>();

  NewsArticleListViewMOdel(){

    _populateTopHeadlines();
  }

  void populateTopHeadlines() async {
    List<NewsArticle> newsarticles = await webservices().fetchTopHeadlines();
    this.articles= newsarticles.map((article) => NewsArticleViewMOdel(article: article)).toList();
    notifyListeners();
  }
}