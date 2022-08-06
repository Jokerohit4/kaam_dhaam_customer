import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

class FormsView extends StatelessWidget {
  FormsView(
      {Key key,
      @required this.control,
      @required this.hintText,
      @required this.labelText,
      @required this.ky,
      this.check,
      @required this.inputType,
      this.obsText})
      : super(key: key);
  final TextEditingController control;
  final String hintText, labelText;
  final Key ky;
  final TextInputType inputType;
  final ValueChanged<String> check;
  final bool obsText;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: Get.width / 2,
          child: TextField(
            key: ky,
            controller: control,
            keyboardType: inputType,
            style: const TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
            onChanged: check,
            obscureText: obsText,
            decoration: kTextFieldDecoration.copyWith(
                hintText: hintText, labelText: labelText),
          ),
        ),
      );
}
