import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tugas_4_3/app/component/back_button_cus.dart';
import 'package:tugas_4_3/app/component/button_media.dart';
import 'package:tugas_4_3/app/component/divider_cus.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
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
              "Welcome back! Glad to see you, Again!",
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
                      controller: controller.emailController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.1),
                        labelText: 'Enter your email',
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                            labelText: 'Enter your password',
                            labelStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Colors.grey
                                      .withOpacity(0.5)), //<-- SEE HERE
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
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            controller.login();
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.black),
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            const DividerCus(title: "Login"),
            const SizedBox(
              height: 20,
            ),
            const ButtonMedia(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                  text: 'Don’t have an account? ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Register Now',
                      style: const TextStyle(
                        color: Color(0xff35C2C1),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.offAllNamed('/register');
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
