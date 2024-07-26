import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class SwitchButtonController extends GetxController {
  var selectedCategory = 'Personal'.obs;

  void selectCategory(String category) {
    selectedCategory.value = category;
  }
}
