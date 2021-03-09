import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
 class MatchScreen extends StatefulWidget {
   @override
   _MatchScreenState createState() => _MatchScreenState();
 }

 class _MatchScreenState extends State<MatchScreen> {

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         leading: Icon(Icons.menu_sharp,size: 40),
         title: Center(child: Text("Match")),
         actions: [Icon(Icons.add,size: 40,)],
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

     );
   }
 }

