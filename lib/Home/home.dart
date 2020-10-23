import 'package:fanstasy_league/Home/Standings.dart';
import 'package:flutter/material.dart';

import 'News Feed.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,

        child:Scaffold(

          appBar: AppBar(
            automaticallyImplyLeading: false,
              backgroundColor: Colors.black,
              toolbarHeight: 200,
              centerTitle: true,
              title: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.black,
                child: RichText(textAlign: TextAlign.center,
                  text: TextSpan(text: "SID",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500,color: Colors.white,),children: <TextSpan>[
                    TextSpan(text: "\nLEAGUE",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white,),)
                  ]),
                ),
              ),

            bottom: TabBar(
                indicatorColor: Colors.white,
              unselectedLabelColor: Colors.redAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2,
             labelColor: Colors.white,
              tabs: [
              Tab(child: Text("NEWS FEED"),),
              Tab(child: Text("STANDINGS"),)
            ],
            ),
          ),

        body: TabBarView(
          children: [
            NewsFeed(),
            standings()
          ],
        ),

    )
    );
  }
}
