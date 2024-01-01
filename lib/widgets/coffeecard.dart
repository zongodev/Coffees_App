import 'package:coffeshopfinal/services/apiservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/homepagecontroller.dart';

class CoffeeCard extends StatelessWidget {
  HomePageController homePageController = Get.put(HomePageController());
  final int index;

  CoffeeCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await homePageController
            .fetchCoffeeById(homePageController.coffeesList.value[index].id);
      },
      child: Container(
        height: 165,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Obx(
            () => Row(
              children: [
                Hero(
                  tag: "img${homePageController.coffeesList.value[index].id}",
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            homePageController.coffeesList.value[index].image,
                          ),
                        )),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            homePageController.coffeesList.value[index].title
                                .toString(),
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            homePageController
                                .coffeesList.value[index].description
                                .toString(),
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[600]),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                        ],
                      ),
                      // SizedBox(height: 80,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("\$ 6.09",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.brown,
                                ),
                                Text("4.9",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey[600],
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
