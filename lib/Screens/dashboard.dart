import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      
      navigationBar: CupertinoNavigationBar(
        middle: Text("Connect a new device"),
        leading: Row(


          children: [Icon(Icons.arrow_back_ios_outlined,size: 20,),Text("Back")],),
        
      ),
      child: Center(

        child: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.5),
          child: Column(


            mainAxisAlignment: MainAxisAlignment.center,

            children: [
            buildTextButton("Download manual"),
            SizedBox(height: 20,),
            buildTextButton("Download via SMS"),
              SizedBox(height: 20,),
            buildTextButton("Download via E-mail")
          ],),
        ),
      ),
    );
      /*Scaffold(
      appBar: AppBar(
        leading: Wrap(children: [Icon(Icons.arrow_back_ios_outlined),Text("Back")],),
        title: Center(child: Text("Match")),

      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(

                child: Row(children: [
                  Container(child: Image.network("https://askastrology.com/wp-content/uploads/2019/12/Aries_icon-258x300.jpg",scale: 3,),),
                  SizedBox(width: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Aries",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
                      Text("Know your personality")
                    ],
                  )
                ],),
              ),
              Container(
                padding: EdgeInsets.only(top: 2.0,bottom: 2.0,left: 10.0),
                height: 25,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.indigo),
                child: Text("No Partners",style: TextStyle(color: Colors.white),),

              ),
              Container(
                height: MediaQuery.of(context).size.height*.8,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 2.0,bottom: 2.0,right: 50,left: 50),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(text: "No Partner Found\n",style: TextStyle(color: Colors.black,fontSize: 25)),

                    TextSpan(text: " click (+) to add partner",style: TextStyle(color: Colors.black,fontSize: 25))
                  ]),
                ),
              )
            ],
          ),
        ),
      ),

    );*/
  }

  TextButton buildTextButton(String title) {
    return TextButton(


            style: TextButton.styleFrom(backgroundColor: Colors.green,fixedSize: Size(200, 50),shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)
            )),

            onPressed: (){}, child: Text(title,style: TextStyle(color: Colors.white),));
  }
}
