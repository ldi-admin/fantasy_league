import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class compare{
  Color textcolor;
  String Points;
  String symbol;
  String category;
    compare({this.category,this.Points,this.symbol,this.textcolor});
}

List<compare> firstPlayer=[
  compare(textcolor: Colors.red,symbol: "Assests/Images/negative arrow.png",Points: "23",category: "GOALS"),
  compare(textcolor: Colors.green,symbol: "Assests/Images/positive arrow.png",Points: "14",category: "ASSISTS"),
  compare(textcolor: Colors.green,symbol: "Assests/Images/positive arrow.png",Points: "4",category: "+/-"),
  compare(textcolor: Colors.red,symbol: "Assests/Images/negative arrow.png",Points: "201",category: "SHOTS"),
  compare(textcolor: Colors.grey,symbol: "Assests/Images/line.png",Points: "22",category: "BLOCKS"),

];
List<compare> secondPlayer=[
  compare(textcolor: Colors.green,symbol: "Assests/Images/positive arrow.png",Points: "31",category: "GOALS"),
  compare(textcolor: Colors.red,symbol: "Assests/Images/negative arrow.png",Points: "7",category: "ASSISTS"),
  compare(textcolor: Colors.red,symbol: "Assests/Images/negative arrow.png",Points: "2",category: "+/-"),
  compare(textcolor: Colors.green,symbol: "Assests/Images/positive arrow.png",Points: "223",category: "SHOTS"),
  compare(textcolor: Colors.grey,symbol: "Assests/Images/line.png",Points: "22",category: "BLOCKS"),
];