import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../navigators/routes_management.dart';
import 'add_worker.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                    'https://1.bp.blogspot.com/-7-HJqKmTBlI/UXGCL-ahH3I/AAAAAAAAAqU/1gshJe1RL_0/s1600/IMG_6467.JPG',
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  'Rohitashwa Singh',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        //Now let's Add the button for the Menu
        //and let's copy that and modify it
        // ignore: prefer_const_constructors
        ListTile(
          onTap: RouteManagement.goToUserProfile,
          leading: const Icon(
            Icons.person,
            color: Colors.black,
          ),
          title: const Text('Your Profile'),
        ),

        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.inbox,
            color: Colors.black,
          ),
          title: const Text('Your Inbox'),
        ),

        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.assessment,
            color: Colors.black,
          ),
          title: const Text('Your Dashboard'),
        ),

        ListTile(
          onTap: () {},
          leading: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: const Text('Settings'),
        ),

        ListTile(
          onTap: () {
            Get.to<Navigator>(AddWorker());
          },
          leading: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: const Text('Add a worker'),
        ),
      ]);
}
