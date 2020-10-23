import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Standings.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         Image(image: AssetImage("Assests/Images/Highlight.png"),height: 400,fit: BoxFit.contain,width: 350,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              height: 400,
              child: ListView.builder(itemBuilder:(context,index){
              return Highlights(
                image: second[index].Image,
              );
            },
              itemCount: second.length,shrinkWrap: true,scrollDirection: Axis.horizontal,),
            ),
            Image(image: AssetImage("Assests/Images/article.png"),height: 550,fit: BoxFit.cover,width: 350),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              height: 400,child: ListView.builder(itemBuilder:(context,index){
              return Highlights(
                image: third[index].Image,
              );
            },
              itemCount: third.length,scrollDirection: Axis.horizontal,),
            )

          ],
        ),
      ),
    );
  }
}

List<teams> second=[
  teams(Image: "Assests/Images/small highlight1.png"),
  teams(Image: "Assests/Images/small highlight2.png"),
  teams(Image: "Assests/Images/small highlight3.png"),
  teams(Image: "Assests/Images/small highlight4.png"),
  teams(Image: "Assests/Images/small highlight5.png"),
  teams(Image: "Assests/Images/small highlight6.png"),

];
List<teams> third=[
  teams(Image: "Assests/Images/2small highlight1.png"),
  teams(Image: "Assests/Images/2small highlight2.png"),
  teams(Image: "Assests/Images/2small highlight3.png"),
];
class Highlights extends StatelessWidget {
  final image;
  Highlights({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 350,
      width: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(this.image),fit: BoxFit.fitHeight
        )
      ),


    );
  }
}
