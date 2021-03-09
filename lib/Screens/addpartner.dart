import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddPartner extends StatefulWidget {
  @override
  _AddPartnerState createState() => _AddPartnerState();
}

class _AddPartnerState extends State<AddPartner> {
  DateTime _dateTime=DateTime.now();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined),
        title: Text("Add Partner Details"),
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
                      Text("Aries"),
                      Text("Apr 21 - May 25")
                    ],
                  )
                ],),
              ),
              Container(
                  padding: EdgeInsets.only(left: 10.0,right: 10.0),
                  margin: EdgeInsets.only(top: 200),
                  child: Form(
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Container(
                            alignment: Alignment.center,
                            child: Text("Enter Partners Name")),
                        SizedBox(height: 20.0,),
                        Container(
                          alignment: Alignment.center,
                          color: Colors.white38,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: "Name",


                            ),),
                        ),
                        SizedBox(height: 20.0,),
                        Center(child: Text("Enter Date of Birth")),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          height: 100.0,
                          child: CupertinoDatePicker(
                              initialDateTime: _dateTime,
                              mode: CupertinoDatePickerMode.date,
                              onDateTimeChanged: (date)=>{
                                setState(()=>{
                                  _dateTime=date,
                                }),

                              }),
                        ),
                        TextButton(

                            style: TextButton.styleFrom(backgroundColor: Colors.green,),

                            onPressed: (){}, child: Text("SAVE",style: TextStyle(color: Colors.white),))




                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),

    );
  }
}
