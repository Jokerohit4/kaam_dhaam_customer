import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:kaam_dhaam/app/pages/workers/workers.dart';
import '../../app.dart';
import '../categories/categories.dart';

class WorkerTypeView extends StatefulWidget {
  @override
  _WorkerTypeViewState createState() => _WorkerTypeViewState();
}

class _WorkerTypeViewState extends State<WorkerTypeView>
    with TickerProviderStateMixin {
  List<PopupMenuItem<CategoriesOptions>> popupMenus;
  var val = 'Workers'.obs;
  @override
  void initState() {
    popupMenus = [
      const PopupMenuItem<CategoriesOptions>(
        value: CategoriesOptions.mechanic,
        child: OptionTextWidget(
          title: 'Mechanic',
        ),
      ),
      const PopupMenuItem<CategoriesOptions>(
        value: CategoriesOptions.sweeper,
        child: OptionTextWidget(
          title: 'Sweeper',
        ),
      ),
      const PopupMenuItem<CategoriesOptions>(
        value: CategoriesOptions.electrician,
        child: OptionTextWidget(
          title: 'Electrician',
        ),
      ),
    ];
    setValue(val);
    super.initState();
  }

  void setValue(RxString valu) {
    setState(() {
      val = valu;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const Drawer(
          elevation: 50,
          child: MainDrawer(),
        ),
        appBar: AppBar(
          title: GetBuilder<WorkerController>(
            builder: (_controller) => PopupMenuButton<CategoriesOptions>(
              //    icon : const Text('Workers'),
              initialValue: CategoriesOptions.mechanic,
              onSelected: (value) {
                _controller.checkForSelectedOption;
                val = value as RxString;
                setValue(value as RxString);
              },
              itemBuilder: (_) => popupMenus,
              child: Obx(
                () => Text(val.value),
              ),
            ),
          ),
          backgroundColor: const Color.fromRGBO(208, 32, 56, 0.8),
          //const Color.fromRGBO(255, 200, 48, 1),
          actions: [
            IconButton(
                icon: const Icon(
                  FontAwesomeIcons.search,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(
                  FontAwesomeIcons.male,
                  color: Colors.white,
                ),
                onPressed: () {
                  RouteManagement.goToShort();
                }),
            IconButton(
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        body: Stack(
          children: [
            Background(),
            ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoriesWidget(
                      height: Get.height / 4,
                      width: Get.width / 2.5,
                      alig: MainAxisAlignment.start,
                      employeeType: 'Mechanic',
                      buttonColor: getButton2Color,
                      dp: 'https://st3.depositphotos.com/7105460/15426/i/1600/depositphotos_154269166-stock-photo-portrait-of-a-very-old.jpg',
                      onPress: RouteManagement.goToProfile,
                    ),
                    CategoriesWidget(
                      height: Get.height / 4,
                      width: Get.width / 2.5,
                      alig: MainAxisAlignment.start,
                      employeeType: 'Mechanic',
                      buttonColor: getButton1Color,
                      dp: 'https://st3.depositphotos.com/7105460/15426/i/1600/depositphotos_154269166-stock-photo-portrait-of-a-very-old.jpg',
                      onPress: RouteManagement.goToProfile,
                    ),
                  ]),
            ),
          ],
        ),
      );
}
