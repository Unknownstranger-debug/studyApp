import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_app/screens/previous/more_info.dart';

class RegisterSuccessScreen extends StatefulWidget {
  static String routeName = '/registersuccess';

  @override
  State<RegisterSuccessScreen> createState() => _RegisterSuccessScreenState();
}

class _RegisterSuccessScreenState extends State<RegisterSuccessScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 5),
          () => Navigator.of(context).pushNamed(MoreInfoScreen.routeName),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Container(
          child: Text("Thanks for joining the family, now lets get some details from you to help you find others to group with you", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800,color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
