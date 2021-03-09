import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                        child: Stack(
                      children: [
                        Opacity(
                          opacity: .8,
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 250,
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
                        Positioned(
                          top: 50,
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_outlined,
                                size: 20,
                                color: Colors.black,
                              ),
                              Text(
                                "Back",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
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
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600)),
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
                                            Icon(Icons.gps_fixed),
                                            Text("Home",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w900))
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
                      ],
                    )),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
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
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 60,
                top: 220,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 5),
                        height: 50,
                        child: Row(
                          children: [
                            Text(
                              "Message",
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.message)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 5, right: 30),
                        child: Row(
                          children: [
                            Text(
                              "Call",
                              style: TextStyle(fontSize: 20),
                            ),
                            Icon(Icons.call)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
}
