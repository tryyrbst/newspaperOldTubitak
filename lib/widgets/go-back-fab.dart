import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/main-screen.dart';
import 'package:get/get.dart';

class goBackFab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Get.back(),
      backgroundColor: Colors.grey,
      child: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    );
  }
}
