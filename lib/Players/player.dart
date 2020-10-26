import 'package:flutter/material.dart';

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

                    ),
                  ],
                  isExpanded: true,
                  isDense: true,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
            ),padding: EdgeInsets.symmetric(horizontal: 20),
          ),
        ],
      ),

      ),
    );
  }
}
