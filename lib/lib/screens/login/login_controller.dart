// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:sharedpreffernce_modelclass/lib/json_model/model_class.dart';

// // import 'package:sharedpreffernce_modelclass/lib/screens/home/home_screen.dart';
// // import 'package:sharedpreffernce_modelclass/lib/screens/sign_up/sign_up.dart';

// // import 'package:sharedpreffernce_modelclass/lib/services/pref_service.dart';
// // import 'package:sharedpreffernce_modelclass/lib/utils/preffernce_res.dart';


// // class LoginPageController extends GetxController {
// //   TextEditingController email = TextEditingController();
// //   TextEditingController password = TextEditingController();


// //   void loginButton() {
// //     Get.off(() => const HomePage());
// //   }

// //   void textSignUpButton() {
// //     Get.to(() => const SignUpPage());
// //   }

// //   void check() {
// //     String userString = PrefServices.getString(PrefRes.userList);
// //     if (userString != "") {
// //       print(userString);
// //       List<User> userList = userFromJson(userString);
// //       bool value = userList.any((element) =>
// //           element.email == email.text && element.password == password.text);
// //       if (value) {
// //         int index = userList.indexWhere((element) =>
// //             element.email == email.text && element.password == password.text);
// //         User loginUser = userList[index];
// //         PrefServices.setValue(
// //           PrefRes.loginUser,
// //           json.encode(
// //             loginUser.toJson(),
// //           ),
// //         );
// //         PrefServices.setValue(PrefRes.isSignUp, true);
// //         Get.off(() => const HomePage()) ;     }
// //       else{
// //         Get.snackbar('Login Failed', "Enter user ");
// //       }
// //     } else {
// //       Get.snackbar('Login Failed', 'Please Signup');
// //     }
// //   }
// // }




// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sharedpreffernce_modelclass/lib/json_model/model_class.dart';
// import 'package:sharedpreffernce_modelclass/lib/screens/home/home_screen.dart';
// import 'package:sharedpreffernce_modelclass/lib/screens/sign_up/sign_up.dart';
// import 'package:sharedpreffernce_modelclass/lib/services/firebase_service.dart';

// class LoginPageController extends GetxController {
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();

//   void loginButton() {
//     Get.off(() => const HomePage());
//   }

//   void textSignUpButton() {
//     Get.to(() => const SignUpPage());
//   }

//   Future<void> check() async {
//     // String userString = PrefServices.getString(PrefRes.userList);
//     // if (userString != "") {
//     //   print(userString);
//     //   List<User> userList = userFromJson(userString);
//     //   bool value = userList.any((element) =>
//     //       element.email == email.text && element.password == password.text);
//     //   if (value) {
//     //     int index = userList.indexWhere((element) =>
//     //         element.email == email.text && element.password == password.text);
//     //     User loginUser = userList[index];
//     //     PrefServices.setValue(
//     //       PrefRes.loginUser,
//     //       json.encode(
//     //         loginUser.toJson(),
//     //       ),
//     //     );
//     //     PrefServices.setValue(PrefRes.isSignUp, true);
//     //     Get.off(() => const HomePage()) ;     }
//     //   else{
//     //     Get.snackbar('Login Failed', "Enter user ");
//     //   }
//     // } else {
//     //   Get.snackbar('Login Failed', 'Please Signup');
//     // }

//     Map? allData = await FirebaseServices.getAllData(FirebaseRes.addUser);
//     List<User>? userList;
//     if (allData != null) {
//       print(allData);
//       allData.forEach((key, value) {
//         value['id'] = key;
//         print(value);
//         allData.forEach((key, value) {
//           value['id'] = key;
//           Map<String, dynamic> userData = {};
//           value.forEach((key1, value) {
//             userData[key1.toString()] = value;
//           });
//         });
//         userList!.add(User.fromJson(value));
//       });
//       userList = userFromJson(jsonEncode(userList));
//       bool value = userList!.any((element) =>
//           element.email == email.text && element.password == password.text);
//       if (value) {
//         Get.off(() => const HomePage());
//       } else {
//         Get.snackbar('Login Failed', "Enter user ");
//       }
//     }
//   }
// }



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharedpreffernce_modelclass/lib/json_model/model_class.dart';
import 'package:sharedpreffernce_modelclass/lib/screens/home/home_screen.dart';
import 'package:sharedpreffernce_modelclass/lib/screens/sign_up/sign_up.dart';
import 'package:sharedpreffernce_modelclass/lib/services/firebase_service.dart';

class LoginPageController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void loginButton() {
    Get.off(() => const HomePage());
  }

  void textSignUpButton() {
    Get.to(() => const SignUpPage());
  }

  Future<void> check() async {
    // String userString = PrefServices.getString(PrefRes.userList);
    // if (userString != "") {
    //   print(userString);
    //   List<User> userList = userFromJson(userString);
    //   bool value = userList.any((element) =>
    //       element.email == email.text && element.password == password.text);
    //   if (value) {
    //     int index = userList.indexWhere((element) =>
    //         element.email == email.text && element.password == password.text);
    //     User loginUser = userList[index];
    //     PrefServices.setValue(
    //       PrefRes.loginUser,
    //       json.encode(
    //         loginUser.toJson(),
    //       ),
    //     );
    //     PrefServices.setValue(PrefRes.isSignUp, true);
    //     Get.off(() => const HomePage()) ;     }
    //   else{
    //     Get.snackbar('Login Failed', "Enter user ");
    //   }
    // } else {
    //   Get.snackbar('Login Failed', 'Please Signup');
    // }

    Map? allData = await FirebaseServices.getAllData(FirebaseRes.addUser);
    List<User>? userList;
    if (allData != null) {
      print(allData);
      allData.forEach((key, value) {
        value['id'] = key;
        print(value);
        allData.forEach((key, value) {
          value['id'] = key;
          Map<String, dynamic> userData = {};
          value.forEach((key1, value) {
            userData[key1.toString()] = value;
          });
        });
        userList!.add(User.fromJson(value));
      });
      userList = userFromJson(jsonEncode(userList));
      bool value = userList!.any((element) =>
          element.email == email.text && element.password == password.text);
      if (value) {
        Get.off(() => const HomePage());
      } else {
        Get.snackbar('Login Failed', "Enter user ");
      }
    }
  }
}
