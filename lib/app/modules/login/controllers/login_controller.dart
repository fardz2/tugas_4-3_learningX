import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final RxBool visibility = true.obs;

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email field must be filled';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Email not valid';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    // Reset error message

    // Password length greater than 6
    if (value == null || value.length < 6) {
      return 'Password must be longer than 6 characters.\n';
    }
    // Contains at least one uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Uppercase letter is missing.\n';
    }
    // Contains at least one lowercase letter
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Lowercase letter is missing.\n';
    }
    // Contains at least one digit
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Digit is missing.\n';
    }
    // Contains at least one special character
    if (!value.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
      return 'Special character is missing.\n';
    }
    // If there are no error messages, the password is valid
    return null;
  }

  void login() {
    if (loginFormKey.currentState!.validate()) {
      Get.snackbar("Login", "berhasil login");
      Get.offAllNamed('/home');
    }
  }
}
