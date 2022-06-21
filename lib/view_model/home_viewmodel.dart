import 'package:api/model/news_data_model.dart';
import 'package:api/services/netwwork_service.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'dart:convert' as convert;


class HomeController extends GetxController{

  NetworkService get networkService => GetIt.I<NetworkService>();

  NewsData newsData = NewsData();

  List<Data>?  dataList = [];


  Future newsApiCall() async {
    var response = await networkService.getData('https://inshorts.deta.dev/news?category=science');
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      newsData = NewsData.fromJson(jsonResponse);
      print('Number of books about http: ${newsData.data![0].imageUrl}');
      dataList = newsData.data;
      update();
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}