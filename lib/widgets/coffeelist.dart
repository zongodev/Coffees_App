import 'package:coffeshopfinal/controller/homepagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'coffeecard.dart';
class CoffeesList extends StatelessWidget {
  HomePageController homePageController = Get.put(HomePageController());

   CoffeesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => homePageController.coffeesList.isEmpty? const Center(child: CircularProgressIndicator()) : ListView.builder(
          itemCount: homePageController.coffeesList.length,
          itemBuilder: (context, index) {
            return  CoffeeCard(index: index,);
          },
        ),
      ),
    );
  }
}

