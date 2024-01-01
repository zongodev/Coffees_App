import 'dart:developer';

import 'package:coffeshopfinal/models/coffeemodel.dart';
import 'package:coffeshopfinal/services/apiservice.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxList coffeesList =[].obs;
  Rx<Coffee> coffee = Coffee().obs;
   fetchCoffees () async {
    coffeesList.value= await ApiServices().fetchCoffeeData();
  }
  fetchCoffeeById (int id ) async {
    coffee.value= await ApiServices().fetchCoffeeDataById(id);
    Get.toNamed("/details");
  }
  @override
  void onInit() {
     fetchCoffees();
    super.onInit();
  }
}