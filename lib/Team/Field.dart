import 'package:flutter/material.dart';

import 'Line 1.dart';

class Field extends StatefulWidget {
  @override
  _FieldState createState() => _FieldState();
}

class _FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(

        appBar:  AppBar(
            toolbarHeight:55,
            automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent ,

            elevation: 0,
            bottom: TabBar(
              unselectedLabelColor: Colors.redAccent,
              unselectedLabelStyle: TextStyle(color: Colors.redAccent),
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator:  BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black,)
            ),
            tabs: [
                Tab(child: Container(
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.redAccent)),
                        width:120,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("LINE 1"),
                  ),
                ),
                ),
                Tab(child: Container(
                width: 120,
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                     border: Border.all(color: Colors.redAccent)),
                   child: Align(
                       alignment: Alignment.center,
                       child: Text("LINE 2"))),)
              ],
            ),
          ),

          body: TabBarView(

              children: [
                Line1(),
                Line1()
      ]),
      backgroundColor: Color(0xffE7E2E1),)

    );
  }
}
