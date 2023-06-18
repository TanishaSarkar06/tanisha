
import 'package:intro/models/newsarticle.dart';

class NewsArticleViewMOdel{

  NewsArticle _newsArticle;

  NewsArticleViewMOdel({NewsArticle article}): _newsArticle = article;

  String get title{
    return _newsArticle.title;
  }

String get description{
    return _newsArticle.description;
  }

String get imageURL{
    return _newsArticle.urlToImage;
  }

String get {
    return _newsArticle.url;
  }

}