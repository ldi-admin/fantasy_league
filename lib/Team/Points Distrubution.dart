import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PlayerDetail.dart';

class PointsDistribution extends StatefulWidget {
  @override
  _PointsDistributionState createState() => _PointsDistributionState();
}

class _PointsDistributionState extends State<PointsDistribution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage("Assests/Images/LA logo.png"),height: 60,width: 60,),
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: RichText(textAlign: TextAlign.start,
                      text: TextSpan(text: "  Montreal",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.white,),children: <TextSpan>[
                        TextSpan(text: "\n  ARTISANS",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white,),)
                      ]),
                    ),
                  ),
                ],
              ),
              IconButton(icon: Icon(Icons.close),color: Colors.white, onPressed: (){
                Navigator.pop(context,this);
              })
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:15,),
                child: Text("TEAM POINTS DISTRIBUTION",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2)),
              ),
              Padding(padding: const EdgeInsets.only(top:20,left: 40),
              child: Image(image: AssetImage("Assests/Images/Repeat Grid 16.png"),),)
              ,Container(
                child: ListView.builder(itemBuilder: (context,index){return PlayerStat(
                  Name: detail[index].name,
                  Photo:detail[index].Photo,
                  Score: detail[index].score,
                );
                },itemCount: detail.length,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),

                ),
              )


            ],
          ),
        ),
      ),


    );
  }
}
class PlayerStat extends StatelessWidget {
  final Name, Photo, Score;
  PlayerStat({this.Photo,this.Name,this.Score});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black
      ,
      height:100,
      margin: EdgeInsets.only(top:10,left: 10,right: 10),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(this.Name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.white),),
          RichText(textAlign: TextAlign.start,
              text:  TextSpan(text: "MTL  C,LW",style: TextStyle(fontSize: 12,color: Colors.white38,),)
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage(this.Photo),fit: BoxFit.cover,height: 5,),
              Container(

                height: 60,
                width: 60,

                child: Center(child: Text(this.Score,style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ],
          )
        ],
      ),
    );
  }
}