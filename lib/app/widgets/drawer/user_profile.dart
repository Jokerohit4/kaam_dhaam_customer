import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../forms/forms_controller.dart';
import '../forms/forms_view.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final _controller = Get.put(FormController());
  TextEditingController em = TextEditingController();
  TextEditingController pass = TextEditingController();

  TextEditingController cpass = TextEditingController();
  TextEditingController fnam = TextEditingController();

  TextEditingController lnam = TextEditingController();

  TextEditingController phno = TextEditingController();

  TextEditingController dob = TextEditingController();

  TextEditingController add = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Colors.red,
            ),
          ),
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
        ]),
      );
}
