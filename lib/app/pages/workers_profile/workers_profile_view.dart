import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkersProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: Get.height / 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                // ignore: sort_child_properties_last
                child: FittedBox(
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                      child: Image.network(
                        'https://img.etimg.com/thumb/width-1200,height-900,imgsize-803393,resizemode-1,msid-82191022/jobs/a-labour-crisis-looms-again-as-migrant-app.app.app.app.navigators.navigators.pages.workers-return-home.jpg',
                      )),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 2 * (Get.height / 3),
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(18)),
                  color: Colors.red,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Abhishek Kumar',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        'Age:22 years',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      const Text(
                        'Experience:5 years',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Abhishek is  man from tis region has been working in the sector since forever.He is here nad there and alot of places.He has won this and was once seen doing that.',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
}
