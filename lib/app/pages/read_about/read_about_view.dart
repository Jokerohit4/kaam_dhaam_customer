import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loop_page_view/loop_page_view.dart';

class ReadAboutView extends StatelessWidget {
  ReadAboutView({@required this.img, @required this.headLine});

  final _controller = PageController(initialPage: 1);
  final LoopPageController controller = LoopPageController();
  final String img, headLine;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: LoopPageView.builder(
          controller: controller,
          scrollDirection: Axis.vertical,
          reverse: true,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) => PageView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              reverse: true,
              children: [
                Column(children: [
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: Image.network(
                                img,
                              ),
                            ),
                            SizedBox(
                              height: Get.height / 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: Get.height / 2.8,
                      child: Container(
                        height: Get.height / 1.8,
                        width: Get.width,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment(0.0, 1),
                            // 10% of the width, so there are ten blinds.
                            colors: <Color>[
                              Color(0xFF9E9E9E),
                              Color(0xFFFFFFFF),
                              Color(0xFFFFFFFF),
                              Color(0xFFFFFFFF),
                            ], // grey to white// repeats the gradient over the canvas
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(42),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '#Governance',
                                    style: TextStyle(
                                      color: Colors.green[700],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '  #History',
                                    style: TextStyle(
                                      color: Colors.red[900],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    headLine,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                ' db.newsbank[index].news',
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'read full article',
                                style: TextStyle(
                                  color: Colors.black,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '12th Oct 2018',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(2, 131, 191, 1),
                                    ),
                                  ),
                                  const Text(
                                    'Swipe Right to \n go to Details',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(56, 208, 32, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ]),
              ]),
        ),
      );
}
