import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/weather.dart';

class WeatherRepo{
  Future<WeatherModel>  getWeather(String city) async {
    String url = "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2";
    final result = await http.Client().get(url);

    if(result.statusCode != 200){
      throw Exception();
    }
    return parsedJson(result.body);
    
  } 
  WeatherModel parsedJson(final response){
      final jsonDecoded = jsonDecode(response);

      final jsonWeather = jsonDecoded['main'];

      return WeatherModel.fromJson(jsonWeather);
    }
}