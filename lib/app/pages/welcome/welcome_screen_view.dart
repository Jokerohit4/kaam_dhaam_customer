import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';

class WelcomeScreenView extends StatelessWidget {
  const WelcomeScreenView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            width: Get.width,
            height: Get.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: <Color>[
                  Color.fromRGBO(52, 80, 161, 0.8),
                  Colors.indigo,
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SideButton(
                txt: 'LOGIN',
                ky: Key('Login Button'),
                color: Colors.black,
                onPress: RouteManagement.goToLogin,
              ),
              const SideButton(
                txt: 'SIGN UP',
                ky: Key('SIGN UP Button'),
                color: Colors.black,
                onPress: RouteManagement.goToSignUP,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
