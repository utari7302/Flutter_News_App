import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/models/news_by_categories_model.dart';
import 'package:newsapp/models/news_channel_headlines_model.dart';

class NewsRepository{

  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadlinesApi(String channelName) async {
    String url = 'https://newsapi.org/v2/top-headlines?sources=${channelName}&apiKey=f39cbe6b527b425d869acde45dee12b2';
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      final body = jsonDecode(response.body);
      return NewsChannelHeadlinesModel.fromJson(body);
    }
    throw Exception("Error");
  }

  Future<NewsCategories> fetchNewsByCategoriesApi(String categoryName) async {
    String url = 'https://newsapi.org/v2/everything?q=${categoryName}&apiKey=f39cbe6b527b425d869acde45dee12b2';
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      final body = jsonDecode(response.body);
      return NewsCategories.fromJson(body);
    }
    throw Exception("Error");
  }
}