import 'package:coffeshopfinal/controller/homepagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/coffe_size_card.dart';

class CoffeeDetails extends StatelessWidget {
  CoffeeDetails({Key? key}) : super(key: key);
  HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(homePageController.coffee.value.title.toString()),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/heart.png",
                width: 20,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Hero(
                tag: "img${homePageController.coffee.value.id}",
                child: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  maxRadius: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                homePageController.coffee.value.image.toString()))),
                  ),
                ),
              ),
            ),
            Text(
              homePageController.coffee.value.title.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            Text(
              homePageController.coffee.value.description.toString(),
              style: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                 text: const TextSpan(children: [
                   TextSpan(
                     text: "\$",
                     style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)
                   ),
                   WidgetSpan(child: SizedBox(width: 5,),),
                   TextSpan(
                       text: "6",
                       style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold)
                   ),
                   TextSpan(
                       text: ".02",
                       style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)
                   ),
                 ]),
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CoffeeSizeCard(size: 30, type: 'Small', index: 0,),
                    CoffeeSizeCard(size: 40, type: 'Medium', index: 1,),
                    CoffeeSizeCard(size: 50, type: 'Large', index: 2,),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

