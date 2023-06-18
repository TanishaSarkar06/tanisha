import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intro/models/newsarticle.dart';

class webservices {
  Future<List<NewsArticle>> fetchTopHeadlines() async{
    String url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=1d067bcacce24a929c0a551878167528";
    final response = await http.get(url);

    if (response.statusCode==200){

      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();


    } else{
      throw Exception("failed to get top news");
    }
  }

}