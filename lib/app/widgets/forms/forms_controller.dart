import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  var checkColor = const Color.fromRGBO(23, 40, 148, 1).obs;
  int c = 0, d = 0; //to check the update status of the validators
  String emailL, passwordL, emailS, passwordS;

  void updateColor(Rx<Color> color) {
    checkColor = color;
  }

  void emailLogin(String value) {
    emailL = value;
  }

  void passwordLogin(String value) {
    passwordL = value;
  }

  void checkEmail(String value) {
    //validates the email
    if (value.isEmpty) {
      print('Email cannot be empty');
    } else if (EmailValidator.validate(value) == false) {
      print('Email Invalid');
    } else {
      c = 1;
      emailS = value; //update
      update();
    }
  }

  void checkPassword(String password) {
    //validates the password
    if (passwordS.isEmpty) {
      print('Password cannot be empty');
    } else if (passwordS.length < 6 ||
        !passwordS.contains(RegExp(r'[A-Z]')) ||
        !passwordS.contains(RegExp(r'[0-9]')) ||
        !passwordS.contains(RegExp(r'[^<>()[\]\\.,;:\s@\"!]'))) {
      updateColor(Colors.black.obs);
      print('Conditions not fulfilled');
      update();
    } else {
      d = 2; //update
      updateColor(Colors.green.obs);
      update();
    }
  }

  /*Pages.login() {
    //checks the form validation and navigates
    print(c + d);
    if (c == 1 && d == 2 && checkColor == Colors.green.obs) {
      //Get.to<Navigator>(BlankScreen()); //Navigates to the other page
    }
  }*/
}
