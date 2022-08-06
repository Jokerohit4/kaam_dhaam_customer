import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';

class RegistrationView extends StatelessWidget {
  final _controller = Get.put(FormController()); //object
  TextEditingController em = TextEditingController(); //email controller
  TextEditingController pass = TextEditingController();
  TextEditingController cpass = TextEditingController(); //password controller
  TextEditingController fnam = TextEditingController();
  TextEditingController lnam = TextEditingController();
  TextEditingController phno = TextEditingController();
  TextEditingController dob = TextEditingController();
  TextEditingController add = TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: DoubleBackToCloseApp(
          snackBar: const SnackBar(
            content: Text('Tap back again to leave'),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Background(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: GetBuilder<FormController>(
                  builder: (_) => _.c == 1 && _.d == 2
                      ? Container()
                      : SingleChildScrollView(
                          reverse: true,
                          child: SizedBox(
                            height: Get.height,
                            width: Get.width,
                            child: ListView(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                FormsView(
                                  ky: const Key('First Name Sign Up Field'),
                                  control: fnam,
                                  //   check: _controller.checkEmail,
                                  inputType: TextInputType.name,
                                  labelText: 'First Name',
                                  hintText: 'Enter your First Name',
                                  obsText: false,
                                ),
                                FormsView(
                                  ky: const Key('Last Name Sign Up Field'),
                                  control: lnam,
                                  //   check: _controller.checkEmail,
                                  inputType: TextInputType.name,
                                  labelText: 'Last Name',
                                  hintText: 'Enter your Last Name',
                                  obsText: false,
                                ),
                                FormsView(
                                  ky: const Key('Phone Number Sign Up Field'),
                                  control: phno,
                                  check: _controller.checkPassword,
                                  inputType: TextInputType.phone,
                                  obsText: false,
                                  labelText: 'Phone Number',
                                  hintText: 'Enter your Phone Number',
                                ),
                                FormsView(
                                  ky: const Key('DOB Sign Up Field'),
                                  control: dob,
                                  check: _controller.checkPassword,
                                  inputType: TextInputType.datetime,
                                  obsText: false,
                                  labelText: 'D.O.B',
                                  hintText: 'Enter your D.O.B',
                                ),
                                FormsView(
                                  ky: const Key('Address Sign Up Field'),
                                  control: add,
                                  check: _controller.checkPassword,
                                  inputType: TextInputType.streetAddress,
                                  obsText: false,
                                  labelText: 'Address',
                                  hintText: 'Enter your Address',
                                ),
                                FormsView(
                                  ky: const Key('Email Sign Up Field'),
                                  control: em,
                                  check: _controller.checkEmail,
                                  inputType: TextInputType.emailAddress,
                                  obsText: false,
                                  labelText: 'Email',
                                  hintText: 'Enter your email',
                                ),
                                FormsView(
                                  ky: const Key('Password Sign Up Field'),
                                  control: pass,
                                  check: _controller.checkPassword,
                                  inputType: TextInputType.visiblePassword,
                                  obsText: true,
                                  hintText: 'Enter your password',
                                  labelText: 'Password',
                                ),
                                FormsView(
                                  ky: const Key(
                                      'Confirm Password Sign Up Field'),
                                  control: cpass,
                                  check: _controller.checkPassword,
                                  inputType: TextInputType.visiblePassword,
                                  obsText: true,
                                  hintText: 'Confirm your password',
                                  labelText: 'Confirm Password',
                                ),
                                checkMarks(),
                                CenterButton(
                                  txt: 'SIGN UP',
                                  ky: const Key('Sign UP Button'),
                                  //  color:lightBlue,
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget checkMarks() => Row(
        key: const Key('Icon Row'),
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Obx(
                  () => Icon(
                    Icons.check_circle_rounded,
                    color: _controller.checkColor.value,
                  ),
                ),
                const Text('More than\n 6 characters'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Obx(
                  () => Icon(
                    Icons.check_circle_rounded,
                    color: _controller.checkColor.value,
                  ),
                ),
                const Text('One special\n character'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Obx(
                  () => Icon(
                    Icons.check_circle_rounded,
                    color: _controller.checkColor.value,
                  ),
                ),
                const Text('one\ndigit'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Obx(
                  () => Icon(
                    Icons.check_circle_rounded,
                    color: _controller.checkColor.value,
                  ),
                ),
                const Text('one upper \n case'),
              ],
            ),
          ),
        ],
      );
}
