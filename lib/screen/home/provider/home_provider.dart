import 'package:advance_exam/screen/home/model/home_model.dart';
import 'package:advance_exam/utils/api_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier{

  QuotesModel? quotesModel;

  Future<void> getData() async {
    ApiHelper apiHelper = ApiHelper();
    QuotesModel? data = await apiHelper.quotesApi();
    quotesModel = data;
    notifyListeners();
  }

}