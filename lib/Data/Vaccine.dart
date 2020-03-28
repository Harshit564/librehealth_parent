import 'package:flutter/material.dart';

class Vaccine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Types Of vaccine "),
        centerTitle: true,
      ),
      body: Container(
          child: ListView(
        children: const <Widget>[
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                color: Colors.black,
                size: 50,
              ),
              title: Text(
                'Measles',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                'Live-attenuated vaccines',
                style: TextStyle(color: Colors.black),
              ),
              //isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                color: Colors.black,
                size: 50,
              ),
              title: Text(
                'Mumps',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                'Live-attenuated vaccines',
                style: TextStyle(color: Colors.black),
              ),
              //isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                color: Colors.black,
                size: 50,
              ),
              title: Text(
                'Rubella',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                'Live-attenuated vaccines',
                style: TextStyle(color: Colors.black),
              ),
              //isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                color: Colors.black,
                size: 50,
              ),
              title: Text(
                'Rotavirus',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                'Live-attenuated vaccines',
                style: TextStyle(color: Colors.black),
              ),
              //isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                color: Colors.black,
                size: 50,
              ),
              title: Text(
                'Smallpox',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                'Live-attenuated vaccines',
                style: TextStyle(color: Colors.black),
              ),
              //isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                color: Colors.black,
                size: 50,
              ),
              title: Text(
                'Chickenpox',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                'Live-attenuated vaccines',
                style: TextStyle(color: Colors.black),
              ),
              //isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                color: Colors.black,
                size: 50,
              ),
              title: Text(
                'Yellow Fever',
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text(
                'Live-attenuated vaccines',
                style: TextStyle(color: Colors.black),
              ),
              //isThreeLine: true,
            ),
          ),
        ],
      )),
    );
  }
}
