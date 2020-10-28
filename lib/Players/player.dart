import 'package:fanstasy_league/Players/PlayerList%20Stats.dart';
import 'package:fanstasy_league/Team/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Change Player.dart';

class player extends StatefulWidget {
  @override
  _playerState createState() => _playerState();
}

class _playerState extends State<player> {
  int _value=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Color(0xff8A231C),
        automaticallyImplyLeading: false,
          centerTitle: false,
          title: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  height: 40,
                  width: 250,
                  child: TextFormField(

                    decoration: InputDecoration(
                      hintText: "SEARCH PLAYER",
                      hintStyle: TextStyle(color: Colors.white),
                    fillColor: Colors.white
                    ,enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)
                    )),

                  ),
                ),
                IconButton(icon: Icon(CupertinoIcons.search_circle_fill),color: Colors.red, onPressed: (){


                },iconSize: 50,)
              ],
            ),
          ),
      ),
      backgroundColor: Color(0xffE7E2E1),
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 27,vertical: 15),
            height:50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            alignment: Alignment.center,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                  style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.w400),
                  itemHeight: 50,
                  value: _value,

                  items: [
                    DropdownMenuItem(
                      child: Text("TOP AVAILABLE PLAYERS",textAlign: TextAlign.end,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,letterSpacing: 1)),
                      value: 1,
                      onTap: (){


                      },
                    ),
                  ],
                  isExpanded: true,
                  isDense: true,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                      return showDialog(
                        context: context,
                        builder: (BuildContext context){return AlertDialog(
                          backgroundColor: Colors.white38,
                          scrollable: true,
                          titlePadding: EdgeInsets.symmetric(horizontal: 5),
                          elevation: 5,

                          contentPadding:EdgeInsets.symmetric(horizontal: 0,vertical: 0),

                          content: Center(
                            child: Container(
                              height: 380,
                              width: 340,
                              child: Column(
                                children: [
                                  Container(
                                    height: 60,
                                    color:Colors.redAccent ,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(" AVAILABLE PLAYERS TO TRADE",style: TextStyle(color: Colors.white,fontSize: 14,letterSpacing: 1),),
                                        IconButton(icon: Icon(Icons.close),color: Colors.white,iconSize: 30, onPressed: (){
                                          Navigator.pop(context,this);

                                        })
                                      ],
                                    ),
                                  ),
                                  Container(

                                    height: 320,
                                    child: ListView.builder(itemBuilder: (context,index){
                                      return PlayerStatCardChange(
                                        pic: changeList[index].pic,
                                        name: changeList[index].name,
                                        owned: changeList[index].owned,
                                        points: changeList[index].points,
                                        average:changeList[index].average,
                                        rank: changeList[index].rank,

                                      );
                                    },scrollDirection: Axis.vertical, itemCount: changeList.length,shrinkWrap: true,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );},
                      );
                    });
                  }),
            ),padding: EdgeInsets.symmetric(horizontal: 20),
          ),
          Container(
            child: ListView.builder(itemBuilder: (context,index){
              return PlayerStatCard(
                pic: mainlist[index].pic,
               name: mainlist[index].name,
                owned: mainlist[index].owned,
                points: mainlist[index].points,
                average: mainlist[index].average,
                rank: mainlist[index].rank,

              );
            }, itemCount: mainlist.length,shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
            ),
          )


        ],
      ),

      ),
    );
  }
}

class PlayerStatCard extends StatelessWidget {
  final name,average,owned,pic,points,rank;

  PlayerStatCard({this.name,this.average,this.owned,this.pic,this.points,this.rank,});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 140,
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
              IconButton(icon:Icon(Icons.add_circle),color: Colors.greenAccent, onPressed: (){},iconSize: 40,)
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
