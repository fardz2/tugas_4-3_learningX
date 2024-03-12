import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButtonCus extends StatelessWidget {
  const BackButtonCus({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.offAllNamed('/onboarding');
      },
      icon: const Icon(Icons.chevron_left),
      style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 1, color: Colors.grey.withOpacity(0.5)))),
    );
  }
}
