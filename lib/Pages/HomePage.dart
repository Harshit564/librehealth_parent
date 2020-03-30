import 'package:flutter/material.dart';
import 'package:librehealthparent/Data/ChildInfo.dart';
import 'package:librehealthparent/Data/Vaccine.dart';
import 'package:librehealthparent/Drawer/drawer.dart';
import 'package:librehealthparent/Manage/Discussions.dart';
import 'package:librehealthparent/Pages/LoginPage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        drawer: GuillotineMenu(),
        appBar: AppBar(
          title: Text(
            "Home Page",
            style: new TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () => _onAlertButtonsPressed(context),
              tooltip: "Log Out",
            ),
          ],
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              top: 16.0, bottom: 16.0, left: 12.0, right: 12.0),
          child: Card(
            child: ListView(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Amara'),
                    subtitle: Text('Age: 4 Month'),
                    onTap: ()=> _addCredential(),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Amelia'),
                    subtitle: Text('Age: 6 Month'),
                    onTap: ()=> _addCredential(),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Asher'),
                    subtitle: Text('Age: 5 year'),
                    onTap: ()=> _addCredential(),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Atticus'),
                    subtitle: Text('Age: 1 month'),
                    onTap: ()=> _addCredential(),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Aurora'),
                    subtitle: Text('Age: 5 year'),
                    onTap: ()=> _addCredential(),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Ava'),
                    subtitle: Text('Age: 2 year'),
                    onTap: ()=> _addCredential(),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Child')),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital), title: Text('Vaccines')),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), title: Text('Discuss')),
          ],
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Vaccine()),
                );
              }
              if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Discussions()),
                );
              }
            });
          },
          fixedColor: Colors.orange,
        ),
      ),
    );
  }
  Future<void> _addCredential() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter the Credential'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Credential',
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            RaisedButton(
              color: Colors.orange,
              child: Text('Open'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => childinfo(),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
  _onAlertButtonsPressed(context) {
    Alert(
      style: AlertStyle(
        backgroundColor: Colors.black,
        titleStyle: TextStyle(color: Colors.white),
        descStyle: TextStyle(color: Colors.white),
      ),
      context: context,
      type: AlertType.warning,
      title: "LOG OUT",
      desc: "Do you want to log out your ID ?",
      buttons: [
        DialogButton(
          child: Text(
            "Cancel",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          gradient: LinearGradient(colors: [
            Color(0xFF20BF55),
            Color(0xFF01BAEF),
          ]),
        ),
        DialogButton(
          child: Text(
            "Log Out",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),
        )
      ],
    ).show();
  }
}
