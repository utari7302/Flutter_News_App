import 'package:newsapp/models/news_by_categories_model.dart';
import 'package:newsapp/models/news_channel_headlines_model.dart';
import 'package:newsapp/repository/news_repository.dart';

class NewsViewModel{

  final _rep = NewsRepository();

  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadlinesApi(String channelName) async{
    final response = _rep.fetchNewsChannelHeadlinesApi(channelName);
    return response;
  }

  Future<NewsCategories> fetchNewsByCategoriesApi(String categoryName) async{
    final response = _rep.fetchNewsByCategoriesApi(categoryName);
    return response;
  }
}