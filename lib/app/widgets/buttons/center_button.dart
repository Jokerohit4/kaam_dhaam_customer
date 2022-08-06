import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';

class CenterButton extends StatelessWidget {
  CenterButton({
    this.txt,
    this.ky,
    this.color,
  });
  final String txt;
  final Color color;
  final Key ky;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Container(
          height: Get.height / 12,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: ElevatedButton(
            key: ky,
            onPressed: () {
              Get.to<Navigator>(HomeView());
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              primary: lightBlue,
              onPrimary: lightGreen,
              shadowColor: Colors.blue,
            ),

            //ButtonStyle(
            //  padding: MaterialStateProperty.all(
//                  const EdgeInsets.only(right: 0.0, left: 5.0)),
            //  backgroundColor: MaterialStateProperty.resolveWith(
            //    getButton2Color,
            //  ),
            //  ),

            child: Text(
              txt,
              textAlign: TextAlign.center,
              //  overflow: TextOverflow.ellipsis,
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
