import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app1/Screens/ProfieDeshboardHeaderDelegate.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ProfileDashboard extends StatefulWidget {
  @override
  _ProfileDashboardState createState() => _ProfileDashboardState();
}

class _ProfileDashboardState extends State<ProfileDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
              delegate: ProfileDashboardHederDelegate(
                  maxExtent: 250.0, minExtent: 150.0)),
          SliverAppBar(
              title: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                    Text("Back")
                  ],
                ),
              ),
              backgroundColor: Colors.transparent,
              pinned: true,
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [],
                background: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  child: Stack(children: [
                    Opacity(
                      opacity: .8,
                      child: Container(
                          child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                        child: Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://doolancallaghan.com.au/wp-content/uploads/2015/01/happy-child-on-the-northern-beaches.jpg"),
                        ),
                      )),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEeVq_oJyVTT4mkjvrazmwG05gY-nba-JrGg&usqp=CAU",
                                scale: 50),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            alignment: Alignment.center,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Estelle\n",
                                    style: TextStyle(color: Colors.black)),
                                WidgetSpan(
                                    child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      child: Icon(Icons.add),
                                    ),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text("Home")
                                      ],
                                    )
                                  ],
                                )),
                              ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              )),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Stack(children: [
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    buildRigntTimelineTile(),
                    buildLeftTimelineTile(),
                    buildRigntTimelineTile(),
                    buildLeftTimelineTile(),
                    buildRigntTimelineTile(),
                    buildLeftTimelineTile(),
                    buildRigntTimelineTile(),
                    buildLeftTimelineTile(),
                    buildRigntTimelineTile(),
                    buildLeftTimelineTile(),
                  ],
                ),
                Positioned(
                  top: -10,
                  child: Card(
                    elevation: 10,
                    color: Colors.blue,
                    child: Text("hELLO"),
                  ),
                )
              ]),
            )
          ]))
        ],
      ),
    );
  }

  TimelineTile buildRigntTimelineTile() {
    return TimelineTile(
      topLineStyle: LineStyle(color: Colors.indigoAccent, width: 2.5),
      bottomLineStyle: LineStyle(color: Colors.indigoAccent, width: 2.5),
      alignment: TimelineAlign.center,
      indicatorStyle: const IndicatorStyle(
        width: 15,
        color: Colors.indigoAccent,
      ),
      rightChild: Container(
        height: 60,
        margin: EdgeInsets.only(left: 0),
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Icon(Icons.flight_takeoff_outlined),
            ),
            Container(
              child: Text(
                "10:40pm\nGoogle",
                style: TextStyle(fontSize: 10),
              ),
            ),
            Container(
              child: Text("5 min", style: TextStyle(fontSize: 10)),
            )
          ],
        ),
      ),
    );
  }

  TimelineTile buildLeftTimelineTile() {
    return TimelineTile(
      topLineStyle: LineStyle(color: Colors.indigoAccent, width: 2.5),
      bottomLineStyle: LineStyle(color: Colors.indigoAccent, width: 2.5),
      alignment: TimelineAlign.center,
      indicatorStyle: const IndicatorStyle(
        width: 15,
        color: Colors.indigoAccent,
      ),
      leftChild: Container(
        height: 60,
        margin: EdgeInsets.only(left: 0),
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text("5 min", style: TextStyle(fontSize: 10)),
            ),
            Container(
              child: Text(
                "10:40pm\nGoogle",
                style: TextStyle(fontSize: 10),
              ),
            ),
            Container(
              child: Icon(Icons.flight_takeoff_outlined),
            ),
          ],
        ),
      ),
    );
  }

  TimelineTile buildTimelineTile() {
    return TimelineTile(
      alignment: TimelineAlign.center,
      isFirst: true,
      indicatorStyle: const IndicatorStyle(
        width: 20,
        color: Colors.purple,
        indicatorY: 0.2,
        padding: EdgeInsets.all(8),
      ),
      leftChild: Container(
        child: Column(
          children: [
            Icon(Icons.add),
            SizedBox(
              height: 5,
            ),
            Text(
              "Order Processed",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "we are preparing your order",
              style: TextStyle(fontSize: 12, color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
