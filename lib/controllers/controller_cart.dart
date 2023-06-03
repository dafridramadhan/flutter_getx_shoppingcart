import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerCart extends GetxController {
  var books = 0.obs;
  var comics = 0.obs;
  int get sum => books.value + comics.value;

  incrementBooks() => books.value++;

  decrementBooks() {
    if (books.value <= 0) {
      Get.snackbar(
        "Error",
        "Can't be less than 0",
        icon: const Icon(Icons.error),
        barBlur: 20,
        isDismissible: true,
        duration: const Duration(seconds: 3),
      );
    } else {
      books.value--;
    }
  }
  incrementComics() => comics.value++;

  decrementComics() {
    if (comics.value <= 0) {
      Get.snackbar(
        "Error",
        "Can't be less than 0",
        icon: const Icon(Icons.error),
        barBlur: 20,
        isDismissible: true,
        duration: const Duration(seconds: 3),
      );
    } else {
      comics.value--;
    }
  }
}
