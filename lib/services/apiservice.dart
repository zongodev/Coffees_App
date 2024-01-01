import 'dart:convert';
import 'dart:developer';

import 'package:coffeshopfinal/models/coffeemodel.dart';
import 'package:coffeshopfinal/models/coffeesmodel.dart';
import 'package:http/http.dart' as http;
class ApiServices{
  Future fetchCoffeeData () async {
    var response = await http.get(Uri.parse("https://api.sampleapis.com/coffee/hot"));
    if (response.statusCode==200){
      var jsonData= response.body;
      Coffees coffees= Coffees.fromJson(jsonDecode(jsonData));
      List coffeeList = coffees.coffees.map((e) => Coffee.fromJson(e)).toList();

      return coffeeList;

    }
    else {
      throw response.statusCode;
    }

  }

  Future fetchCoffeeDataById (int id) async {
    var response = await http.get(Uri.parse("https://api.sampleapis.com/coffee/hot/$id"));
    if (response.statusCode==200){
      var jsonData= response.body;
     Coffee coffee = Coffee.fromJson(jsonDecode(jsonData));


      return coffee;

    }
    else {
      throw response.statusCode;
    }

  }
}