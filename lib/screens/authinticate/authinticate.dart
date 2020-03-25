
import 'package:flutter/material.dart';
import 'package:sign_up/screens/authinticate/register.dart';
import 'package:sign_up/screens/authinticate/sign_in.dart';
class Authinticate extends StatefulWidget {

  @override
  _AuthinticateState createState() => _AuthinticateState();

}
class _AuthinticateState extends State<Authinticate> {

  bool showSignIn = true;
  void toggleView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignIn(toggleView : toggleView);
    }else{
      return Register(toggleView : toggleView);
    }
  }
}
