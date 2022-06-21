import 'dart:convert';

import 'package:http/http.dart' as http;
 class NetworkService {

   Future<http.Response> getData(String url) async {
    var response = await http.get(Uri.parse(url));
    return response;
  }

   Future<http.Response> postData(String url,String query) async {
     var response = await http.post(Uri.parse(url),body: jsonDecode(query));
     return response;
   }

   Future<http.Response> putData(String url,String query) async {
     var response = await http.put(Uri.parse(url),body: jsonDecode(query));
     return response;
   }

}