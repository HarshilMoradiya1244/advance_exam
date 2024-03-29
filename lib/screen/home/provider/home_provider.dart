import 'package:advance_exam/screen/home/model/home_model.dart';
import 'package:advance_exam/utils/api_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier{

  QuotesModel? quotesModel;
  int selectedPage =1;

  Future<void> getData() async {
    ApiHelper apiHelper = ApiHelper();
    QuotesModel? data = await apiHelper.quotesApi(selectedPage);
    quotesModel = data;
    notifyListeners();
  }

  void changePage(int changePage){
    selectedPage = changePage;

    notifyListeners();
  }

  void changeIndex(int i){
    selectedPage = i;
    i++;
    notifyListeners();
  }
}