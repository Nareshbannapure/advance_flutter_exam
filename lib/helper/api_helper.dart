import 'dart:convert';

import 'package:advance_flutter_exam/modal/news_modal.dart';
import 'package:http/http.dart' as http;

class APIHelper {
  Future<List<NewsModal>?> getNews() async {
    String newslink = "https://newsapi.org/v2/everything?q=tesla&from=2024-11-17&sortBy=publishedAt&apiKey=cbe5fcaf7ea0472db073409d8868f29c";
    http.Response response = await http.get(Uri.parse(newslink));

    if(response.statusCode == 200){
      String jsonString = response.body;

      List jsonList = jsonDecode(jsonString);
      return jsonList.map((e) => NewsModal.mapToModel(e)).toList();
    }
    print("=============Error===============");
    return null;
  }
}