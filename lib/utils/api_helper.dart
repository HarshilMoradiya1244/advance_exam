import 'dart:convert';
import 'package:advance_exam/screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;
class ApiHelper {

  Future<QuotesModel?>quotesApi() async {

    String apiLink = "https://api.quotable.io/quotes?page=1&_gl=1*zrxf7*_ga*MTgwMjkxNDIxOS4xNzA1NTczMjk1*_ga_ZCYG64C7PL*MTcwNTU3MzI5NS4xLjEuMTcwNTU3MzgxMy4wLjAuMA..";

    var response = await http.get(Uri.parse(apiLink));

    if(response.statusCode == 200){

      var jsonToString = await jsonDecode(response.body);
      QuotesModel data =  QuotesModel.mapToModel(jsonToString);
      return data;
    }
    return null;
  }
}
