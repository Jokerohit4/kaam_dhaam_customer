import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget(
      {Key key,
      this.alig,
      this.employeeType,
      this.buttonColor,
      this.dp,
      this.height,
      this.width,
      this.onPress})
      : super(key: key);
  final MainAxisAlignment alig;
  final String employeeType, dp;
  final Color Function(Set<MaterialState>) buttonColor;
  final double height, width;
  final Function() onPress;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: SizedBox(
          width: width,
          height: height,
          child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.only(right: 0.0, left: 5.0)),
              backgroundColor: MaterialStateProperty.resolveWith(
                buttonColor,
              ),
            ),

            // ignore: unnecessary_statements
            onPressed: onPress,
            child: Column(
              children: [
                // Padding(
                // padding: const EdgeInsets.all(8.0),
                // child: CircleAvatar(
                //  radius: Get.width / 8,
                //  backgroundImage: NetworkImage(dp),
                //),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 0.0),
                  child: Image.asset('assets/g2.png'),
                ),
                Text(
                  employeeType,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
