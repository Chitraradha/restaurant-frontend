
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/restmodels.dart';
class ResApi{
  Future<dynamic>sendData(String OrderID,String CustomerName,String CustPhoneNo,String FoodDetails,String Price)async {
    var client = http.Client();
    var url = Uri.parse("http://10.0.4.223:3011/api/restaurant/add");
    var response = await client.post(url,
        headers: <String, String>
        {
          "Content-Type": "application/json; charset=UTF-8"
        },
        body: jsonEncode(
            {
              "OrderID": String,
              "CustomerName": String,
              "CustPhoneNo": String,
              "FoodDetails": String,
              "Price": String
            }
        )
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }
    else {
      throw Exception("Failed to send data...");
    }
  }
    Future<List<Restaurant>> getRes() async{
    var client=http.Client();
    var url=Uri.parse("http://10.0.4.223:3011/api/restaurant/view");
    var response= await client.get(url);
    if(response.statusCode==200)
    {
      return restaurantFromJson(response.body);
    }
    else
    {
      return [];
    }
  }
}