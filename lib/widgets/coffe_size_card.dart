import 'dart:developer';

import 'package:coffeshopfinal/controller/details_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CoffeeSizeCard extends StatelessWidget {
  final double size;
  final int index;
  final String type;
   CoffeeSizeCard({
    super.key, required this.size, required this.type, required this.index,
  });
   DetailsPageController detailsPageController = Get.put(DetailsPageController());


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              detailsPageController.pickCupSize(index);
              log(index.toString());
            },
            child: Obx(
              () =>  AnimatedContainer(
                curve: Curves.ease,
                alignment: Alignment.center,
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  border: Border.all(width: detailsPageController.borderWidth[index].value,color: detailsPageController.borderColor[index].value!),
                ),
                duration: const Duration(seconds: 2),
                child: Image.asset("assets/images/coffee.png",width: size,color: detailsPageController.iconColor[index].value,),
              ),
            ),
          ),
          Text(type,style: const TextStyle(fontWeight: FontWeight.bold,),),
        ],
      ),
    );
  }
}
