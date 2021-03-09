import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app1/Screens/BasicInfoForm/userBasicForm.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    Size deviceSize= MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.indigo[900]),
          width:deviceSize.width,
          height: deviceSize.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star_border_sharp,size: 100,color: Colors.white,),
              Text("iHoroscope",style: TextStyle(color: Colors.white,fontSize: 25.0,decoration: TextDecoration.underline),)
            ],
          ),

        ),
      ),

    );
  }
}
