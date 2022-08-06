import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const Drawer(
          elevation: 50,
          child: MainDrawer(),
        ),
        body: DoubleBackToCloseApp(
          snackBar: const SnackBar(
            content: Text('Tap back again to leave'),
          ),
          child: Stack(
            children: [
              Background(),
              getBody(),
            ],
          ),
        ),
      );
  ListView getBody() => ListView(
        children: [
          SizedBox(
            width: Get.width,
            height: Get.height / 4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (context, index) => Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: Get.width / 1.05,
                      height: Get.height,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.only(right: 0.0, left: 5.0)),
                          backgroundColor: MaterialStateProperty.resolveWith(
                              getButton1Color),
                        ),
                        onPressed: () {
                          Get.to<Navigator>(ReadAboutView(
                            headLine: '"I work 18 hours a day" says Abhijeet.',
                            img:
                                'https://images.indianexpress.com/2020/06/MNREGA-12.jpg',
                          ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Get.width / 1.8,
                              child: Column(
                                children: [
                                  const Text(
                                    '"I work 18 hours a day" says Abhijeet.',
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.network(
                              'https://st3.depositphotos.com/7105460/15426/i/1600/depositphotos_154269166-stock-photo-portrait-of-a-very-old.jpg',
                              //        width: Get.mediaQuery.size.width / 4,
                              height: Get.height,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: Get.width / 2.5,
                  child: CenterButton(
                    txt: 'One Time',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: Get.width / 2.5,
                  child: CenterButton(
                    txt: 'Monthly Subscription',
                  ),
                ),
              ),
            ],
          ),
          Headers('Recently Hired', TextAlign.left),
          VerticalGrid(),
          const SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Headers('Top Rated', TextAlign.left),
                  const HorizontalGrid(
                    itemCount: 10,
                    setMainAlign: MainAxisAlignment.start,
                    pad: EdgeInsets.only(left: 8.0),
                  ),
                ],
              ),
              Positioned(
                right: -80,
                top: -30,
                child: Image.asset(
                  'assets/g2.png',
                  height: Get.height / 2.7,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Headers('Closest', TextAlign.right),
                  const HorizontalGrid(
                    itemCount: 10,
                    setMainAlign: MainAxisAlignment.end,
                    pad: EdgeInsets.only(right: 8.0),
                  ),
                ],
              ),
              Positioned(
                child: Image.asset(
                  'assets/paint.jpg',
                  height: Get.height / 3,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: Get.height / 12,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80),
                ),
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.only(right: 0.0, left: 5.0)),
                  backgroundColor: MaterialStateProperty.resolveWith(
                    getButton2Color,
                  ),
                ),
                onPressed: () {
                  Get.to<Navigator>(CategoriesView());
                },
                child: const Text(
                  'Go to Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          BottomBar(),
        ],
      );
}
