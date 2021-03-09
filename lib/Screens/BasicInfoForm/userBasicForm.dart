import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app1/model/user.dart';

class UserBasicInfoForm extends StatefulWidget {
  @override
  _UserBasicInfoFormState createState() => _UserBasicInfoFormState();
}



class _UserBasicInfoFormState extends State<UserBasicInfoForm> {
  final formKey=GlobalKey<FormState>();
  User user=new User();



  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Hyades.jpg/1200px-Hyades.jpg"),
              fit: BoxFit.cover
            )
          ),
          child: SafeArea(
            child: Column(

              children: [
                Container(
              alignment: Alignment.topCenter,
              child: Text("iHoroscope",style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),)),
                SizedBox(height: 400.0,),
                Container(
                  padding: EdgeInsets.only(left: 20.0,right: 20.0),
                  child: Form(
                    key: formKey,

                    child: Column(

                      children: [
                        Container(child: Text("Enter Your Name",style: TextStyle(color: Colors.white),),),
                        Container(
                            decoration: BoxDecoration(
                               color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                            ),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "Your name"
                              ),
                              onChanged: (value)=>{
                               setState((){
                                 user.name=value;
                               })
                              },
                            )),
                        Container(
                          decoration: BoxDecoration(),
                          child: Text("Enter Your Birth Date",style: TextStyle(color: Colors.white)),),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.white
                          ),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                              decoration: InputDecoration(


                                  hintText:user!=null?user.date.day.toString()+"/"+user.date.month.toString()+"/"+user.date.year.toString():DateTime.now().day.toString()+"/"+DateTime.now().month.toString()+"/"+DateTime.now().year.toString()
                              ),

                            onTap: (){
                          showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1800), lastDate: DateTime(3000)).then((date) => {
                            setState((){
                              user.date=date;
                            })
                          });
                        },),),
                        Container(child: Text(user.date.day+user.date.month+user.date.year == null ? DateTime.now().year : user.date.month.toString(),style: TextStyle(color: Colors.white)),),
                        TextButton(
                            style: TextButton.styleFrom(backgroundColor: Colors.white38),

                            onPressed: (){}, child: Text("Start",style: TextStyle(color: Colors.white),))


                      ],
                    ),
                  ),
                )


              ],),
          )),
      ),
    );
  }
}
