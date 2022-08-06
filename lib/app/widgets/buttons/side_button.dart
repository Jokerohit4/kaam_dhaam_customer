import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideButton extends StatelessWidget {
  const SideButton({Key key, this.txt, this.ky, this.direcTo, this.color, this.onPress})
      : super(key: key);
  final String txt;
  final Key ky;
  final Page direcTo;
  final Color color;
  final Function() onPress;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          elevation: 5.0,
          color: color,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: MaterialButton(
            key: ky,
            onPressed: onPress,
            minWidth: Get.width / 1.3,
            height: 42.0,
            child: Text(
              txt,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      );
}
