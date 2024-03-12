import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final RxBool visibility = true.obs;
  final RxBool visibilityConPass = true.obs;

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  String? usernameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username field must be filled';
    }

    return null;
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
      return 'Password must be longer than 6 characters';
    }
    // Contains at least one uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Uppercase letter is missing';
    }
    // Contains at least one lowercase letter
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Lowercase letter is missing';
    }
    // Contains at least one digit
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Digit is missing';
    }
    // Contains at least one special character
    if (!value.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
      return 'Special character is missing';
    }
    // If there are no error messages, the password is valid
    return null;
  }

  String? confirmPasswordValidator(String? value) {
    // Reset error message

    // Password length greater than 6
    if (value == null || value.isEmpty) {
      return 'Confirm password field must be filled';
    }
    if (value != passwordController.text) {
      return 'Confirm password not match';
    }

    // If there are no error messages, the password is valid
    return null;
  }

  void register() {
    if (loginFormKey.currentState!.validate()) {
      Get.snackbar("Register", "Register berhasil, silahkan login");
      Get.offAllNamed('/login');
    }
  }
}
