import 'package:flutter/material.dart';
import 'Gallery.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreenActivity extends StatefulWidget {
  @override
  _HomeScreenActivityState createState() => _HomeScreenActivityState();
}

class _HomeScreenActivityState extends State<HomeScreenActivity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Theme(
        data: ThemeData(),
        child: Scaffold(
          backgroundColor: Colors.blue,
          body: Stack(
            children: <Widget>[
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Center(
                    child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Card(
                  margin: EdgeInsets.only(bottom: 20, right: 10, left: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Theme(
                    data: ThemeData(
                        cardTheme: CardTheme(
                            elevation: 2,
                            margin:
                                EdgeInsets.only(right: 20, left: 20, top: 20),
                            shape: BeveledRectangleBorder(
                                side: BorderSide(color: Colors.blueAccent),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))))),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          splashColor: Colors.cyanAccent,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Gallery()));
                          },
                          child: Card(
                            child: ListTile(
                              leading: Icon(
                                Icons.chevron_right,
                                size: 25,
                              ),
                              title: Text("Browse for Ideas"),
                              subtitle: Text(
                                  "Search for your perfect kind of memento idea"),
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.deepPurple,
                          onTap: (){
                            if(canLaunch("https://forms.gle/GngxpzBfxYURiQZH9") != null)
                            launch("https://forms.gle/GngxpzBfxYURiQZH9");

                          },
                          child: Card(
                            child: ListTile(
                              leading: Icon(
                                Icons.chevron_right,
                                size: 25,
                              ),
                              title: Text("Submit an Idea"),
                              subtitle: Text(
                                  "Submit for your perfect kind of memento idea"),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Icon(
                              Icons.chevron_right,
                              size: 25,
                            ),
                            title: Text("Tell a Story"),
                            subtitle:
                                Text("Tell us the Story and we will find the "
                                    "perfect match for you"),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: Icon(
                              Icons.chevron_right,
                              size: 25,
                            ),
                            title: Text("Track & History"),
                            subtitle:
                            Text("Track your product or see through your "
                                "history"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
