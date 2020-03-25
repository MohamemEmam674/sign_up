import 'package:flutter/material.dart';
import 'package:sign_up/services/auth.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final AuthService _auth = AuthService();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[500],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
               await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout')
          )
        ],
      ),
    );
  }
}
