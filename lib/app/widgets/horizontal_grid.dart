import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app.dart';

class HorizontalGrid extends StatelessWidget {
  const HorizontalGrid(
      {Key key,
      @required this.itemCount,
      this.button,
      // this.onPress,
      this.listImg,
      this.listName,
      this.height,
      this.setMainAlign,
      this.pad})
      : super(key: key);
  final int itemCount;
  final Widget button;
  final double height;
  //final onPress;
  final List listName, listImg;
  final MainAxisAlignment setMainAlign;
  final EdgeInsets pad;
  @override
  Widget build(BuildContext context) {
    if (listName == null || listImg == null) {
      return Padding(
        padding: pad,
        child: Row(
          mainAxisAlignment: setMainAlign,
          children: [
            SizedBox(
              height: Get.height / 8,
              width: Get.width / 1.35,
              child: SizedBox(
                height: Get.height / 8,
                width: Get.width / 1.5,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.0,
                  ),
                  itemCount: itemCount,
                  itemBuilder: (context, index) => ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.only(right: 0.0, left: 5.0)),
                        backgroundColor:
                            MaterialStateProperty.resolveWith(getButton1Color)),
                    onPressed: () {
                      RouteManagement.goToProfile();
                    },
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
            ),
          ],
        ),
      );
    }
    return const CircularProgressIndicator();
  }
}
