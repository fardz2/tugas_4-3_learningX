import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tugas_4_3/app/component/back_button_cus.dart';
import 'package:tugas_4_3/app/component/button_media.dart';
import 'package:tugas_4_3/app/component/divider_cus.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButtonCus(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Hello! Register to get started",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
                key: controller.loginFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      controller: controller.usernameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.1),
                        labelText: 'Username',
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1,
                              color:
                                  Colors.grey.withOpacity(0.5)), //<-- SEE HERE
                        ),
                      ),
                      validator: controller.usernameValidator,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: controller.emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.1),
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1,
                              color:
                                  Colors.grey.withOpacity(0.5)), //<-- SEE HERE
                        ),
                      ),
                      validator: controller.emailValidator,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Obx(
                      () => TextFormField(
                        controller: controller.passwordController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.1),
                            labelText: 'Password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 0.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.grey.withOpacity(0.5)),
                              //<-- SEE HERE
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(controller.visibility.value
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                controller.visibility.value =
                                    !controller.visibility.value;
                              },
                            )),
                        validator: controller.passwordValidator,
                        obscureText: controller.visibility.value,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Obx(
                      () => TextFormField(
                        controller: controller.confirmPasswordController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.withOpacity(0.1),
                            labelText: 'Confirm password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 0.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.grey
                                      .withOpacity(0.5)), //<-- SEE HERE
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(controller.visibilityConPass.value
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                controller.visibilityConPass.value =
                                    !controller.visibilityConPass.value;
                              },
                            )),
                        validator: controller.confirmPasswordValidator,
                        obscureText: controller.visibilityConPass.value,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            controller.register();
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.black),
                          child: const Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            const DividerCus(title: "Register"),
            const SizedBox(
              height: 20,
            ),
            const ButtonMedia(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Login Now',
                      style: const TextStyle(
                        color: Color(0xff35C2C1),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.offAllNamed('/login');
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
