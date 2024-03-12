import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.snackbar("Logout", "Berhasil Logout");
              Get.offAllNamed("/onboarding");
            },
            child: const Text("Logout")),
      ),
    );
  }
}
