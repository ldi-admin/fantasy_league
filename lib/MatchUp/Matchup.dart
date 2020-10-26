import 'package:fanstasy_league/Home/News%20Feed.dart';
import 'package:fanstasy_league/MatchUp/Player%20MatchUp%20List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class matchUp extends StatefulWidget {
  @override
  _matchUpState createState() => _matchUpState();
}

class _matchUpState extends State<matchUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black87,
        toolbarHeight: 240,
        centerTitle: true,
        title: Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Assests/Images/matchup header.png"),fit: BoxFit.fitWidth
            )
          ),
        ),
      ),
      backgroundColor: Color(0xffE7E2E1),
      body: SingleChildScrollView(
        child: Container(



          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: ListView.builder(itemBuilder: (context,index){return MatchUpCard(
                  name: MatchUpList[index].name,
                  gamestatus: MatchUpList[index].gamestatus,
                  score: MatchUpList[index].score,
                  name2: MatchUpList[index].name2,
                  gamestatus2: MatchUpList[index].gamestatus2,
                  score2: MatchUpList[index].score2,
                  centerLetter:MatchUpList[index].centerLetter,
                );
                },itemCount: MatchUpList.length,shrinkWrap: true,scrollDirection: Axis.vertical,physics: NeverScrollableScrollPhysics(),
                ),
              ), Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text("HIGHLIGHTS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,letterSpacing: 1)),
              ),
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
      ) ,
    );
  }
}
class MatchUpCard extends StatelessWidget {
  final name,gamestatus, score, centerLetter, name2,gamestatus2, score2;
  MatchUpCard({this.name,this.gamestatus,this.score,this.name2,this.gamestatus2,this.score2,this.centerLetter});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.white,

      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal:30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(this.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                RichText(textAlign: TextAlign.start,
                  text: TextSpan(text: this.gamestatus,style: TextStyle(fontSize: 14,color: Colors.black,),children: <TextSpan>[
                    TextSpan(text: " M-L",style: TextStyle(fontSize: 14,color: Colors.black54,),),
                    TextSpan(text: "\n1G, 2A, 3 SOG",style: TextStyle(fontSize: 14,color: Colors.black54,),)
                  ]),
                ),
                Container(
                  height: 35,
                  width: 35,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),

                  child: Center(child: Text(this.score,style: TextStyle(color: Colors.white,fontSize: 15),)),
                )
              ],

            ),
          ),
          Container(
            height:120,
            color: Colors.black26,
            width: 25,
            child: Center(child: Text(this.centerLetter,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),),
          ),
          Container(
            width: 150,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(this.name2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                RichText(textAlign: TextAlign.start,
                  text: TextSpan(text: this.gamestatus2,style: TextStyle(fontSize: 14,color: Colors.black,),children: <TextSpan>[
                    TextSpan(text: " M-L",style: TextStyle(fontSize: 14,color: Colors.black54,),),
                    TextSpan(text: "\n1G, 2A, 3 SOG",style: TextStyle(fontSize: 14,color: Colors.black54,),)
                  ]),
                ),
                Container(
                  height: 35,
                  width: 35,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),

                  child: Center(child: Text(this.score2,style: TextStyle(color: Colors.white,fontSize: 15),)),
                )
              ],


            ),
          )
        ],
      ),

    );
  }
}
