import 'dart:async';

import 'package:get/get.dart';
import 'package:sharedpreffernce_modelclass/lib/screens/home/home_screen.dart';
import 'package:sharedpreffernce_modelclass/lib/screens/login/login_screen.dart';
import 'package:sharedpreffernce_modelclass/lib/services/pref_service.dart';
import 'package:sharedpreffernce_modelclass/lib/utils/preffernce_res.dart';

class SpleshController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    bool isLogin = PrefServices.getBool(PrefRes.isSignUp);
    Timer(
      const Duration(seconds: 3),
      () => Get.off(
        () => isLogin ? const HomePage() : const LoginPage(),
      ),
    );
  }
}
