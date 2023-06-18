

import 'package:flutter/material.dart';
import 'package:intro/viewmodels/newsArticleListViewModel.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget{


  @override
  Widget build(BuildContext context){

    final vm = Provider.of<NewsArticleListViewMOdel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("top news")
      )
      body: ListView.builder(
        itemCount: vm.articles.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: Container(
              width: 100,
              height: 100,
              child: Image.network(vm.articles[index].imageURL)),
            title: TextButton(vm.articles[index].title),
          )
        }
      ),
     );
  }
}