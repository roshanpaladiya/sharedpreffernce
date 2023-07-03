import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharedpreffernce_modelclass/lib/screens/login/login_controller.dart';
import 'package:sharedpreffernce_modelclass/lib/screens/login/login_screen_widget.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Get.put(LoginPageController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              loginPageTextField(),
              loginPagePasswordTextField(),
              loginButton(),
              textSignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
