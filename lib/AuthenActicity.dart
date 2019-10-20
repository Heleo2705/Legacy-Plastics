import 'package:flutter/material.dart';
import 'HomeScreenActivity.dart';

class AuthenActivity extends StatefulWidget {
  @override
  _AuthenActivityState createState() => _AuthenActivityState();
}

class _AuthenActivityState extends State<AuthenActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Authentication Activity"),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.account_box),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Email Id",
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Phone Number",
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                    child: Text("Register"),
                    splashColor: Colors.deepPurple,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreenActivity()));
                    }),
                RaisedButton(
                    child: Text("Register with google"),
                    splashColor: Colors.deepPurple,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreenActivity()));
                    })
              ],
            )
          ],
        ));
  }
}
