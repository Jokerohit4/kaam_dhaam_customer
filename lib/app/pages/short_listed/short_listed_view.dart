import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShortListedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Stack(
            children: [
              Container(
                width: Get.width,
                height: Get.height,
                color: Colors.blue,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: Get.height / 1.2,
                      child: ListView.builder(
                          //physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index) =>
                              Card(
                                color: Colors.green,
                                child: ListTile(
                                  tileColor: Colors.yellowAccent,
                                  title: const Text(
                                    'Abhishek Kumar',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Age'),
                                      const Text('Experience'),
                                    ],
                                  ),
                                  isThreeLine: true,
                                  trailing: Image.asset('assets/g2.png'),
                                ),
                              )),
                    ),
                  ),
                  Container(
                    height: Get.height / 7,
                    color: Colors.redAccent,
                    width: Get.width,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'TOTAL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text('Abhishek'),
                            const Text('Abhishek'),
                            const Text('Abhishek'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
}
