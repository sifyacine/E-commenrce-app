import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/number_symbols_data.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  void updatePageIndecator(index){
    carouselCurrentIndex.value = index;
  }

}
