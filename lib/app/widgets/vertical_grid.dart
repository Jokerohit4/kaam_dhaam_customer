import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app.dart';

class VerticalGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        //  color: Colors.white,
        height: Get.height / 3.3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1.0,
            ),
            itemCount: 8,
            itemBuilder: (context, index) => ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.only(right: 0.0, left: 5.0)),
                  backgroundColor:
                      MaterialStateProperty.resolveWith(getButton2Color)),
              onPressed: () {},
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      '',
                      width: 100,
                      height: Get.height / 12,
                      /* width: MediaQuery.of(context).size.width / 3,
                                    height: MediaQuery.of(context).size.height / 10,*/
                    ),
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text('listName[0]'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
