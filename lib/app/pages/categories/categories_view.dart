import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';
import '../../navigators/routes_management.dart';
import 'categories.dart';

class CategoriesView extends StatefulWidget {
  @override
  _CategoriesViewState createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  var head = ['Select \n  Worker', ' ', ' ', ' ', ' ', ' ', ' ', ' '];
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const Drawer(
          elevation: 50,
          child: MainDrawer(),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: ListView.builder(
              // physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) => Row(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          head[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoriesWidget(
                        height: Get.height / 3,
                        width: Get.width / 3,
                        alig: MainAxisAlignment.start,
                        employeeType: 'Mechanic',
                        buttonColor: getButton1Color,
                        dp: 'https://st3.depositphotos.com/7105460/15426/i/1600/depositphotos_154269166-stock-photo-portrait-of-a-very-old.jpg',
                        onPress: RouteManagement.goToWorkers,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoriesWidget(
                        height: Get.height / 3,
                        width: Get.width / 3,
                        alig: MainAxisAlignment.start,
                        employeeType: 'Mechanic',
                        buttonColor: getButton2Color,
                        dp: 'https://st3.depositphotos.com/7105460/15426/i/1600/depositphotos_154269166-stock-photo-portrait-of-a-very-old.jpg',
                        onPress: RouteManagement.goToWorkers,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      );
}
