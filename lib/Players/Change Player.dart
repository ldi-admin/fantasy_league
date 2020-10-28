import 'package:fanstasy_league/Players/PlayerList%20Stats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PlayerStatCardChange extends StatelessWidget {
  final name,average,owned,pic,points,rank;

  PlayerStatCardChange({this.name,this.average,this.owned,this.pic,this.points,this.rank,});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 140,
      width: 380,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black26,style: BorderStyle.solid))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image(image: AssetImage(this.pic),height: 60,width: 60,fit: BoxFit.contain,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: RichText(textAlign: TextAlign.start,
                          text: TextSpan(text: this.name,style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold,height: 1.3),children: <TextSpan>[
                            TextSpan(text: "\nUFA  RW",style: TextStyle(fontSize: 14,color: Colors.black54,),),
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(icon:Icon(CupertinoIcons.arrow_up_arrow_down_circle_fill),color: Colors.greenAccent, onPressed: (){},iconSize: 40,)
              ],


            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height:40,
                  child: RichText(textAlign: TextAlign.center,
                    text: TextSpan(text: "Rank\n",style: TextStyle(fontSize: 14,color: Colors.black54,height: 1.3),children: <TextSpan>[
                      TextSpan(text: this.rank,style: TextStyle(fontSize: 14,color: Colors.black,),),
                    ]),
                  ),
                ),
                Container(
                  height:40,
                  decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.black26,style: BorderStyle.solid))
                  ),
                  child: RichText(textAlign: TextAlign.center,
                    text: TextSpan(text: "Average\n",style: TextStyle(fontSize: 14,color: Colors.black54,height: 1.3),children: <TextSpan>[
                      TextSpan(text: this.average,style: TextStyle(fontSize: 14,color: Colors.black,),),
                    ]),
                  ),padding: EdgeInsets.only(left: 8),
                ),
                Container(
                  height:40,
                  decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.black26,style: BorderStyle.solid))
                  ),
                  child: RichText(textAlign: TextAlign.center,
                    text: TextSpan(text: "Points\n",style: TextStyle(fontSize: 14,color: Colors.black54,height: 1.3),children: <TextSpan>[
                      TextSpan(text: this.points,style: TextStyle(fontSize: 14,color: Colors.black,),),
                    ]),
                  ),padding: EdgeInsets.only(left: 8),
                ),
                Container(
                  height:40,
                  decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.black26,style: BorderStyle.solid))
                  ),
                  child: RichText(textAlign: TextAlign.center,
                    text: TextSpan(text: "Owned\n",style: TextStyle(fontSize: 14,color: Colors.black54,height: 1.3),children: <TextSpan>[
                      TextSpan(text: this.owned,style: TextStyle(fontSize: 14,color: Colors.black,),),
                    ]),
                  ),padding: EdgeInsets.only(left: 8),
                ),
                Container(
                  height:40,
                  decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.black26,style: BorderStyle.solid))
                  ),
                  child: RichText(textAlign: TextAlign.center,
                    text: TextSpan(text: "TOI\n",style: TextStyle(fontSize: 14,color: Colors.black54,height: 1.3),children: <TextSpan>[
                      TextSpan(text: "12:31",style: TextStyle(fontSize: 14,color: Colors.black,),),
                    ]),
                  ),padding: EdgeInsets.only(left: 8),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
