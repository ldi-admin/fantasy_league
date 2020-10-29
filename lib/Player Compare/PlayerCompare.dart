import 'package:fanstasy_league/Player%20Compare/PlayerCompareList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class PlayerCompare extends StatefulWidget {
  @override
  _PlayerCompareState createState() => _PlayerCompareState();
}

class _PlayerCompareState extends State<PlayerCompare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
      //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             ///1
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      height:310,
                      width: 190,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("Assests/Images/image1.png"),fit: BoxFit.cover)
                      ),
                      child:  Align(
                        alignment: Alignment.bottomLeft,

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(textAlign: TextAlign.start,
                            text: TextSpan(text: "Maurice ",style: TextStyle(fontSize: 16,color: Colors.white,),children: <TextSpan>[
                              TextSpan(text: " \nLAFEUR ",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                              TextSpan(text: "C,LW-MTL",style: TextStyle(fontSize: 16,color: Colors.white,),),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      height:120,
                      width: 190,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(textAlign: TextAlign.center,
                                    text: TextSpan(text: "Rank",style: TextStyle(fontSize: 16,color: Colors.white70,height: 1.5),children: <TextSpan>[
                                      TextSpan(text: "\n23",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:30,right: 10),
                                    child: Image(image: AssetImage("Assests/Images/positive arrow.png"),height: 10,width: 10,fit: BoxFit.cover,),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              height:70,

                              decoration: BoxDecoration(
                                  border: Border(left: BorderSide(color: Colors.white54)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: RichText(textAlign: TextAlign.center,
                                        text: TextSpan(text: " Owned",style: TextStyle(fontSize: 16,color: Colors.white70,height: 1.5),children: <TextSpan>[
                                          TextSpan(text: "\n86%",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                        ]),
                                      ),
                                    ),
                                  ), Padding(
                                    padding: const EdgeInsets.only(top:30),
                                    child: Image(image: AssetImage("Assests/Images/negative arrow.png"),height: 10,width: 10,fit: BoxFit.cover,),
                                  ),
                                ],
                              ),
                            ),

                          ],
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      height:100,
                      width: 190,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: RichText(textAlign: TextAlign.center,
                              text: TextSpan(text: "Points",style: TextStyle(fontSize: 16,color: Colors.white70,height: 1.5),children: <TextSpan>[
                                TextSpan(text: "\n306.7",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:30,left: 10),
                            child: Image(image: AssetImage("Assests/Images/positive arrow.png"),height: 10,width: 10,fit: BoxFit.cover,),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 190,
                      child: ListView.builder(itemBuilder: (context,index){
                        return Compare(
                          Points: firstPlayer[index].Points,
                          category:firstPlayer[index].category ,
                          symbol:firstPlayer[index].symbol ,
                          textcolor:firstPlayer[index].textcolor ,
                        );
                      },itemCount: firstPlayer.length,physics: NeverScrollableScrollPhysics(),shrinkWrap: true,),
                    )
                  ],
                ),
             ///2
                Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        height: 310,
                        width: 190,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("Assests/Images/image2.png"),fit: BoxFit.cover)
                        ),
                        child:  Align(
                          alignment: Alignment.bottomLeft,

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(textAlign: TextAlign.start,
                              text: TextSpan(text: "Maurice ",style: TextStyle(fontSize: 16,color: Colors.white,),children: <TextSpan>[
                                TextSpan(text: " \nLAFEUR ",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                                TextSpan(text: "C,LW-MTL",style: TextStyle(fontSize: 16,color: Colors.white,),),
                              ]),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        height:120,
                        width: 190,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RichText(textAlign: TextAlign.center,
                                    text: TextSpan(text: "Rank",style: TextStyle(fontSize: 16,color: Colors.white70,height: 1.5),children: <TextSpan>[
                                      TextSpan(text: "\n23",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:30,right: 10),
                                    child: Image(image: AssetImage("Assests/Images/positive arrow.png"),height: 10,width: 10,fit: BoxFit.cover,),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              height:70,

                              decoration: BoxDecoration(
                                border: Border(left: BorderSide(color: Colors.white54)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: RichText(textAlign: TextAlign.center,
                                        text: TextSpan(text: " Owned",style: TextStyle(fontSize: 16,color: Colors.white70,height: 1.5),children: <TextSpan>[
                                          TextSpan(text: "\n86%",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                        ]),
                                      ),
                                    ),
                                  ), Padding(
                                    padding: const EdgeInsets.only(top:30),
                                    child: Image(image: AssetImage("Assests/Images/negative arrow.png"),height: 10,width: 10,fit: BoxFit.cover,),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        height:100,
                        width: 190,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: RichText(textAlign: TextAlign.center,
                                text: TextSpan(text: "Points",style: TextStyle(fontSize: 16,color: Colors.white70,height: 1.5),children: <TextSpan>[
                                  TextSpan(text: "\n306.7",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:30,left: 10),
                              child: Image(image: AssetImage("Assests/Images/positive arrow.png"),height: 10,width: 10,fit: BoxFit.cover,),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 190,

                        child: ListView.builder(itemBuilder: (context,index){
                          return Compare2(
                            Points: secondPlayer[index].Points,
                            category:secondPlayer[index].category ,
                            symbol:secondPlayer[index].symbol ,
                            textcolor:secondPlayer[index].textcolor ,
                          );
                        },itemCount: 5,physics: NeverScrollableScrollPhysics(),shrinkWrap: true,),
                      )
                    ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FlatButton(onPressed: (){},
                      child:Container(
                   height: 50,

                    decoration: BoxDecoration(
                    color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(12)
                    ),
                      child: Center(
                          child: Text("CONFIRM TRADE",style: TextStyle(letterSpacing: 1,color: Colors.white),)
                      ),

                      ),
                    ),
            )
            ,Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FlatButton(onPressed: (){},
                child:Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                      ,border: Border.all(color: Colors.redAccent)
                  ),
                  child: Center(
                      child: Text("CANCEL",style: TextStyle(color: Colors.redAccent,letterSpacing: 1),)
                  ),

                ),
              ),
            )
            ,Container(
              height: 50,
            )
          ],
        ),
      ),
      bottomSheet: SolidBottomSheet(
        autoSwiped: true,
        canUserSwipe: true,
        headerBar: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
          ),
          child: Center(
            child: Text(
              "PLAYERS  HISTORY",style: TextStyle(color: Colors.white,fontSize: 15,letterSpacing: 1.6),
            ),
          ),
        ),
        toggleVisibilityOnTap: true,
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar:  AppBar(

              automaticallyImplyLeading: false,
              backgroundColor: Colors.black,
              title: Row(
                children: [
                  Image(image: AssetImage("Assests/Images/statchart1.png"),fit: BoxFit.contain,),
                  Image(image: AssetImage("Assests/Images/statchart2.png"),fit: BoxFit.contain,),
                ],
              ),

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
        )
        ),

      );


  }
}

class Compare extends StatelessWidget {
 final textcolor, Points, symbol, category;
 Compare({this.category,this.Points,this.symbol,this.textcolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(top:5),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(this.category,style: TextStyle(letterSpacing: 1.2,fontSize: 15,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(this.Points,style: TextStyle(color: this.textcolor,fontSize: 18),),
              Image(image: AssetImage(this.symbol),height: 10,width: 10,fit: BoxFit.contain,)
            ],
          )
        ],
      ),

    );
  }
}
class Compare2 extends StatelessWidget {
  final textcolor, Points, symbol, category;
  Compare2({this.category,this.Points,this.symbol,this.textcolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(top:5),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(this.Points,style: TextStyle(color: this.textcolor,fontSize: 18),),
              Image(image: AssetImage(this.symbol),height: 10,width: 10,fit: BoxFit.contain,)
            ],
          ),
          Text(this.category,style: TextStyle(letterSpacing: 1.2,fontSize: 15,fontWeight: FontWeight.bold),),
        ],
      ),

    );
  }
}

