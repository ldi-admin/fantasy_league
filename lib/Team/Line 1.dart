import 'package:flutter/material.dart';

class Line1 extends StatefulWidget {
  @override
  _Line1State createState() => _Line1State();
}

class _Line1State extends State<Line1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
     children: [
       Container(
       decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage("Assests/Images/Field.png"),fit: BoxFit.cover)
       )
     ),
     SingleChildScrollView(
       child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 70),
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            height: 120,
            child: ListView.builder(itemBuilder: (context,index){
              return PlayerImage();
            },itemCount: 3,scrollDirection: Axis.horizontal,shrinkWrap: true,),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            height: 120,
            child: ListView.builder(itemBuilder: (context,index){
              return PlayerImage();
            },itemCount: 2,scrollDirection: Axis.horizontal,shrinkWrap: true,),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            height: 120,
            child: ListView.builder(itemBuilder: (context,index){
              return PlayerImage();
            },itemCount: 1,scrollDirection: Axis.horizontal,shrinkWrap: true,),
          ),
          Container(
            color: Colors.black,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            height:90,
            child: ListView.builder(itemBuilder: (context,index){
              return Finaltile();
            },itemCount: 3,scrollDirection: Axis.horizontal,shrinkWrap: true,),
          ),
          Container(height: 40,width: 500,color: Colors.black,child: FlatButton(splashColor: Colors.grey,onPressed: (){}, child: Text("BENCH",style: TextStyle(color: Colors.white),)))
        ],
       ),
     )

     ],
    ),
    );
  }
}
class PlayerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 100,
      padding: EdgeInsets.only(left: 10),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        Image(image: AssetImage("Assests/Images/profile5.png"),height: 50,width: 50,fit: BoxFit.cover,),
         Text("LAFLEUR",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
         Text("MTL-LA,7 PM",style: TextStyle(fontSize: 14,color: Colors.black54),),
         Text("13.4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),

       ],
     ),

    );
  }
}
class Finaltile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 100,
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("Lafleur",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 16),),
          Text("MTL-LA,7 PM",style: TextStyle(fontSize: 14,color: Colors.white38),),
          Text("13.4",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 18,),),

        ],
      ),

    );
  }
}
