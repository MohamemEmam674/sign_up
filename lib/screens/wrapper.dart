import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_up/screens/authinticate/authinticate.dart';
import 'package:sign_up/models/user.dart';
import 'package:sign_up/screens/home/home.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if(user == null){
      return Authinticate();
    }else{
      return Home();
    }

  }
}
