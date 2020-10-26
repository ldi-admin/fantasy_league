import 'package:fanstasy_league/Team/List.dart';
import 'package:flutter/material.dart';

import 'Field.dart';

class team extends StatefulWidget {
  @override
  _teamState createState() => _teamState();
}

class _teamState extends State<team> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff8A231C),
            toolbarHeight: 300,
            automaticallyImplyLeading: false,
            centerTitle: true,

            title: Image(image:AssetImage("Assests/Images/team header.png"),fit: BoxFit.cover,height: 300,width: 300,alignment: Alignment.center,),
            bottom: TabBar(
              indicatorColor: Colors.white,
          tabs: [
            Tab(child: Text("LIST"),),
            Tab(child: Text("FIELD"),)
          ],
            ),
          ),
          body: TabBarView(
            children: [
             ListsPlayer(),
              Field()
            ],
          ),


        ));
  }
}
