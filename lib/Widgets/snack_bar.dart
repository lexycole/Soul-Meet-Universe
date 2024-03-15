import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSuccessSnackBar(String message) {
    Get.snackbar(
      'Success',
      message,
      titleText: const Text( 'Success',
        style: TextStyle(color: Colors.white, fontSize: 21),
      ),
      messageText: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.greenAccent,
      duration: Duration(milliseconds: 6000),
    );
  }
