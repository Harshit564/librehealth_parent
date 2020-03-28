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
                size: 50,
              ),
              title: Text('Measles'),
              subtitle: Text('Live-attenuated vaccines'),
              isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                size: 50,
              ),
              title: Text('Mumps'),
              subtitle: Text('Live-attenuated vaccines'),
              isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                size: 50,
              ),
              title: Text('Rubella'),
              subtitle: Text('Live-attenuated vaccines'),
              isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                size: 50,
              ),
              title: Text('Rotavirus'),
              subtitle: Text('Live-attenuated vaccines'),
              isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                size: 50,
              ),
              title: Text('Smallpox'),
              subtitle: Text('Live-attenuated vaccines'),
              isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                size: 50,
              ),
              title: Text('Chickenpox'),
              subtitle: Text('Live-attenuated vaccines'),
              isThreeLine: true,
            ),
          ),
          Card(
            color: Colors.white,
            child: ListTile(
              leading: Icon(
                Icons.healing,
                size: 50,
              ),
              title: Text('Yellow Fever'),
              subtitle: Text('Live-attenuated vaccines'),
              isThreeLine: true,
            ),
          ),
        ],
      )),
    );
  }
}
