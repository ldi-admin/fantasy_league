import 'package:fanstasy_league/Home/News%20Feed.dart';
import 'package:fanstasy_league/Home/Standings.dart';
import 'package:fanstasy_league/Player%20Compare/PlayerCompare.dart';
import 'package:fanstasy_league/Player%20Compare/PlayerCompareList.dart';
import 'package:fanstasy_league/Team/List.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerProfile extends StatefulWidget {

  @override
  _PlayerProfileState createState() => _PlayerProfileState();
}

class _PlayerProfileState extends State<PlayerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffE7E2E1),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top:20),
                height: 480,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('Assests/Images/playertop.png'),fit: BoxFit.cover
                    )
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(icon: Icon(CupertinoIcons.back),iconSize: 30,color: Colors.white,onPressed: (){
                    Navigator.pop(context,this);
                  },),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(context, ScaleRoute(page: PlayerCompare()));
                        },
                        child:Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(12)
                              ,border: Border.all(color: Colors.redAccent)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(CupertinoIcons.arrow_right_arrow_left,color: Colors.white,size:15),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text("COMPARE",style: TextStyle(color: Colors.white,letterSpacing: 1),),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ),
                    Container(
                      child: FlatButton(onPressed: (){},
                        child:Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Color(0xffE7E2E1),
                              borderRadius: BorderRadius.circular(12)
                              ,border: Border.all(color: Colors.redAccent)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(CupertinoIcons.star_fill,color: Colors.redAccent,size:15),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text("WISHLIST",style: TextStyle(color: Colors.redAccent,letterSpacing: 1),),
                              ),
                            ],
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                child: ListView.builder(itemBuilder: (context,index){
                  return Compare(
                    Points: firstPlayer[index].Points,
                    category:firstPlayer[index].category ,
                    symbol:firstPlayer[index].symbol ,
                    textcolor:firstPlayer[index].textcolor ,
                  );
                },itemCount: firstPlayer.length,physics: NeverScrollableScrollPhysics(),shrinkWrap: true,),
              ),
              ///Text HERE!
              Padding(
                padding: const EdgeInsets.only(top: 20,bottom: 15,left: 30),
                child: Text("H. CRAWFORD HIGHLIGHTS"),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                height: 400,child: ListView.builder(itemBuilder:(context,index){
                return Highlights(
                  image: highlights[index].Image,
                );
              },
                itemCount: highlights.length,scrollDirection: Axis.horizontal,),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 101,
          child: Column(
            children: [
              Container(
                color: Colors.black,
                height: 50,
                width: 600,
                child: FlatButton(
                  onPressed: () {
                    ///First Bottom Sheet
                    showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
                      return Scaffold(
                        appBar: AppBar(
                          automaticallyImplyLeading: false,
                          title:  Center(child: Text("STAT DETAILS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16,wordSpacing: 1.2,letterSpacing: 0.8),)),
                          backgroundColor: Colors.black,
                        ),
                        body: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Image(
                              image: AssetImage("Assests/Images/stats proj.png"),fit: BoxFit.cover
                          )
                        ),
                      );
                    });
                  },

                  splashColor: Colors.grey,
                  child: Text("STAT DETAILS",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16,wordSpacing: 1.2,letterSpacing: 0.8),),
                ),
              ),
              Container(
                color: Colors.black,
                margin: EdgeInsets.only(top: 1),
                height: 50,
                width: 600,
                child: FlatButton(
                  onPressed: (){
                    ///Second Bottom Sheet
                    showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
                      return  DefaultTabController(
                        length: 3,
                        child: Scaffold(
                          appBar:  AppBar(
                            automaticallyImplyLeading: false,
                            backgroundColor: Colors.black,
                            title: Text("PLAYER HISTORY",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16,wordSpacing: 1.2,letterSpacing: 0.8),),
                            centerTitle: true,
                            elevation: 0,
                            bottom: TabBar(
                              labelStyle:TextStyle(color: Colors.black) ,
                              unselectedLabelColor: Colors.redAccent,
                              unselectedLabelStyle: TextStyle(color: Colors.redAccent),
                              isScrollable: true,
                              indicatorSize: TabBarIndicatorSize.label,
                              labelColor: Colors.black,
                              indicator:  BoxDecoration(
                                  color: Colors.white,
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
                                    child: Text("AVG.PTS/GAME",),
                                  ),
                                ),
                                ),
                                Tab(child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.redAccent)),
                                  width:120,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("TIME ON ICE"),
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
                                        child: Text("+/-"))),)
                              ],
                            ),
                          ),
                          body: TabBarView(
                              children: [
                                Scaffold(
                                  body: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Image(
                                        image: AssetImage("Assests/Images/graph compare.png"),fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                Text("AA"),
                                Text("A")
                              ]),
                          backgroundColor: Colors.black,),
                      );
                    });
                  },
                  splashColor: Colors.grey,
                  child: Text("PLAYER HISTORY",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16,wordSpacing: 1.2,letterSpacing: 0.8),),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}



List<teams> highlights=[
  teams(Image: "Assests/Images/playerHighlight1.png"),
  teams(Image: "Assests/Images/playerHighlight2.png"),
];
