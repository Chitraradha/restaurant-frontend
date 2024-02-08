import 'package:http/http.dart' as http;
import 'package:restaurant_app/models/restmodels.dart';
class ResApi{
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