import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Headers extends StatelessWidget {
  Headers(this.txt, this.textAlign);
  final String txt;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.zero,
          width: Get.width,
          height: Get.height / 20,
          decoration: const BoxDecoration(
              // color: Colors.green.withOpacity(0.6),
              ),
          child: Text(
            txt,
            textAlign: textAlign,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      );
}
