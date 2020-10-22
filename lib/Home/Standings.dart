import 'package:flutter/material.dart';

class standings extends StatefulWidget {
  @override
  _standingsState createState() => _standingsState();
}

class _standingsState extends State<standings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(itemBuilder:(context,index){
          return Team(
            image: first[index].Image,
          );
        },
        itemCount: first.length,shrinkWrap: true,scrollDirection: Axis.vertical,),
      ),
    );
  }
}

class teams{
  final String Image;
  teams({this.Image});
}
List<teams> first=[
  teams(Image: "Assests/Images/team1.png"),
  teams(Image: "Assests/Images/team2.png"),
  teams(Image: "Assests/Images/team3.png"),
  teams(Image: "Assests/Images/team4.png"),

];

class Team extends StatelessWidget {
  final image;
  Team({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 25),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 90,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(this.image),fit: BoxFit.fitWidth)
      ),


    );
  }
}
