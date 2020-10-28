class PlayerStat{
   String pic;
   String name;
   String rank;
   String owned;
   String average;
   String points;

   PlayerStat({this.name,this.average,this.owned,this.pic,this.points,this.rank,});
}

List<PlayerStat> mainlist=[
  PlayerStat(name: "M. LAFLEUR",points: "405",owned: "86%",average: "14.6",rank: "23",pic: "Assests/Images/profile1.png"),
  PlayerStat(name: "L. SAVARD",points: "389",owned: "72%",average: "12.3",rank: "37",pic: "Assests/Images/profile2.png"),
  PlayerStat(name: "G. GEOFFRION",points: "345",owned: "70%",average: "11.2",rank: "42",pic: "Assests/Images/profile3.png"),
  PlayerStat(name: "D. DAMPHOUSSE",points: "330",owned: "72%",average: "11.5",rank: "50",pic: "Assests/Images/profile4.png"),
  PlayerStat(name: "S. COURNOYER",points: "278",owned: "50%",average: "10.7",rank: "78",pic: "Assests/Images/profile5.png"),
  PlayerStat(name: "B. MARKOV",points: "234",owned: "45%",average: "9.6",rank: "101",pic: "Assests/Images/profile6.png"),
];
List<PlayerStat> changeList=[
PlayerStat(name: "M. LAFLEUR",points: "405",owned: "86%",average: "14.6",rank: "23",pic: "Assests/Images/profile1.png"),
PlayerStat(name: "L. SAVARD",points: "389",owned: "72%",average: "12.3",rank: "37",pic: "Assests/Images/profile2.png"),
PlayerStat(name: "G. GEOFFRION",points: "345",owned: "70%",average: "11.2",rank: "42",pic: "Assests/Images/profile3.png"),
PlayerStat(name: "D. DAMPHOUSSE",points: "330",owned: "72%",average: "11.5",rank: "50",pic: "Assests/Images/profile4.png"),
];