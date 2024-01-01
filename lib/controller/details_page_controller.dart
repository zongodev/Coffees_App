import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPageController extends GetxController {

  List<Rx<Color?>> borderColor = List.generate(3, (index) => Colors.grey.obs);
  List<Rx<Color?>> iconColor = List.generate(3, (index) => Colors.black.obs);
  List<RxDouble> borderWidth = List.generate(3, (index) => 1.0.obs);

  void pickCupSize (int index){
    borderColor[index].value==Colors.grey? borderColor[index].value=Colors.green :borderColor[index].value=Colors.grey;
    iconColor[index].value==Colors.black? iconColor[index].value=Colors.green : iconColor[index].value=Colors.black;
    borderWidth[index].value==1.0? borderWidth[index].value=3.0 : borderWidth[index].value=1.0;
  }
}