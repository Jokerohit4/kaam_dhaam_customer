import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';

class LoginView extends StatelessWidget {
  //object
  TextEditingController em = TextEditingController(); //email controller
  TextEditingController pass = TextEditingController();
  final _controller = Get.put(FormController());
  String email, passwword;
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: DoubleBackToCloseApp(
          snackBar: const SnackBar(
            content: Text('Tap back again to leave'),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                width: Get.width,
                height: Get.height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: GetBuilder<FormController>(
                  builder: (_) => Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FormsView(
                        control: em,
                        check: _controller.emailLogin,
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        ky: const Key('Email Sign Up Field'),
                        inputType: TextInputType.emailAddress,
                        obsText: false,
                      ),
                      FormsView(
                        control: pass,
                        check: _controller.passwordLogin,
                        inputType: TextInputType.visiblePassword,
                        obsText: true,
                        hintText: 'Enter your password',
                        labelText: 'Password',
                        ky: const Key('Password Sign Up Field'),
                      ),
                      CenterButton(
                        txt: 'LOGIN',
                        ky: const Key('Login Button'),
                        color: Colors.cyan,
                        //         dire: Get.to<Navigator>(HomePage()),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
