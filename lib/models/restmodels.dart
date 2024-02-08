// To parse this JSON data, do
//
//     final restaurant = restaurantFromJson(jsonString);

import 'dart:convert';

List<Restaurant> restaurantFromJson(String str) => List<Restaurant>.from(json.decode(str).map((x) => Restaurant.fromJson(x)));

String restaurantToJson(List<Restaurant> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Restaurant {
  String id;
  String orderId;
  String customerName;
  String custPhoneNo;
  String foodDetails;
  String price;
  int v;

  Restaurant({
    required this.id,
    required this.orderId,
    required this.customerName,
    required this.custPhoneNo,
    required this.foodDetails,
    required this.price,
    required this.v,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    id: json["_id"],
    orderId: json["OrderID"],
    customerName: json["CustomerName"],
    custPhoneNo: json["CustPhoneNo"],
    foodDetails: json["FoodDetails"],
    price: json["Price"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "OrderID": orderId,
    "CustomerName": customerName,
    "CustPhoneNo": custPhoneNo,
    "FoodDetails": foodDetails,
    "Price": price,
    "__v": v,
  };
}
