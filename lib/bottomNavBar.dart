
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home/home.dart';
import 'MatchUp/Matchup.dart';
import 'Players/player.dart';
import 'Settings/Setting.dart';
import 'Team/team.dart';

class bottomnavbar extends StatefulWidget {
  @override
  _bottomnavbarState createState() => _bottomnavbarState();
}

class _bottomnavbarState extends State<bottomnavbar> {
  int _currentIndex=0;
  final tabs=[
    home(),
    team(),
    matchUp(),
    player(),
    setting()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
backgroundColor: CupertinoColors.black,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(
            color: Colors.white
        ),
        selectedItemColor: Colors.white,
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(

              icon: Icon(CupertinoIcons.square_favorites_alt),
              label: 'League',backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_headline_sharp)
            ,label: 'Team',
            //   backgroundColor: Colors.black54
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.score_outlined),
              label: 'Match Up'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: 'Players'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings'
          ),

        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
    );
  }
}
