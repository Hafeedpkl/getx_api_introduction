import 'dart:convert';

import 'package:getx_learning/model/data_model.dart';
import 'package:http/http.dart' as http;

class DataServices {
  //get url
  var url = "https://fakestoreapi.com/products/1";
  //2nd create get function
  Future<DataModel?> getService() async {
    var response = await http.get(Uri.parse(url));
    // 3rd check condition
    if (response.statusCode == 200) {
      //4th json decode
      var data = await json.decode(response.body);
      return DataModel.fromJson(data);
    } else {
      return null;
    }
  }
}
