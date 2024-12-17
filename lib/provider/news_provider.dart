import 'package:advance_flutter_exam/helper/api_helper.dart';
import 'package:flutter/material.dart';

class NewsProvider with ChangeNotifier {
  List articles = [];
  List<Map> companynames = [
    {
      "name": "Jio",
    },
    {
      "name": "Honda",
    },
    {
      "name": "Bajaj",
    },
    {
      "name": "Tata",
    },
    {
      "name": "Bmw",
    },
    {
      "name": "Tesla",
    },
  ];
  void getNewsData() {
    APIHelper helper = APIHelper();
    helper.getNews().then((value) {
      notifyListeners();
      });
    }
}