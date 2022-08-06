import 'package:flutter/material.dart';


class AddWorker extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>  Scaffold(
      body:Column(children: [const Padding(
        padding:  EdgeInsets.all(8.0),
        child: CircleAvatar(radius: 120,backgroundColor: Colors.red,),
      ),
      const Card(child:  ListTile(title:  Text(''),leading: Icon(Icons.person),)),
       const Card(child:  ListTile(title:  Text('9076924415'),leading: Icon(Icons.phone),)),
        const Card(child:  ListTile(title:  Text('Gorakhpur'),leading: Icon(Icons.location_city),)),
        const Card(child:  ListTile(title:  Text('Email'),leading: Icon(Icons.mail),)),
const Card(child:  ListTile(title:  Text('Beginner Level'),leading: Icon(Icons.star),)),
const Card(child:  ListTile(title:  Text('Coins Earned'),leading: Icon(Icons.money),),),
      ],)
    );
  }
