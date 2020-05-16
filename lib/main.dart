import 'package:covid19/chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: SvgPicture.asset(
                  "images/search.svg",
                ),
                onPressed: null)
          ],
          elevation: 0,
          backgroundColor: Color(0xfff7BCC70).withOpacity(0.2),
          leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "images/menu.svg",
                fit: BoxFit.contain,
              )),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 430,
              decoration: BoxDecoration(
                  color: Color(0xfff7BCC70).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: <Widget>[
                  Card("Confirmed Cases"," ( +772) ","77456 cases","0xfff7BCC70"),
                  Card("Active Cases"," ( +555) ","54322 cases","0xfffFE5A4C"),
                  Card("Death Cases"," ( +120) ","1200 cases","0xfff000000")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Three",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        Text("Habits",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey
                        ),)
                      ],

                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      child: SvgPicture.asset(
                  "images/use_mask.svg",
                  fit: BoxFit.contain,
                ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      child: SvgPicture.asset(
                  "images/Clean_Disinfect.svg",
                  fit: BoxFit.contain,
                ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      child: SvgPicture.asset(
                  "images/hand_wash.svg",
                  fit: BoxFit.contain,
                ),
                    ),
                    
                    
                  ],
                ),
              ),
            ),
            Container(
              height: 130,
              decoration: BoxDecoration(
                  color: Color(0xfff7BCC70).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15)),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SvgPicture.asset("images/nurse.svg",fit: BoxFit.contain,width: 100,height: 100,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          margin: EdgeInsets.only(right: 0),
                          child: SvgPicture.asset("images/map.svg"),
                        ),
                      )

                    ],
                                     )

            )
          ],
        ));
  }
}

class Card extends StatelessWidget {
  Card(this.a,this.b,this.c,this.d);
   String a;
  String b;
  String c;
  String d;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "$a",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "$b",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(children: <Widget>[
                    Text("$c",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.grey
                    ),)

                  ],),
                  Row(children: <Widget>[
                    Container(
                    height: 70,
                    width: 150,
                    child: LineReportChart(d)),

                  ],)
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
