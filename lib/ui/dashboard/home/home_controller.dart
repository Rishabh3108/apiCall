import 'package:api/model/news_data_model.dart';
import 'package:get/get.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class HomeController extends GetxController{
  NewsData newsData = NewsData();

  List<Data>?  dataList = [];


  Future newsApiCall() async {
    var response = await http.get(Uri.parse('https://inshorts.deta.dev/news?category=science'));
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