import 'package:flutter/material.dart';

class HospitalData extends StatefulWidget {
  HospitalData({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HospitalDataState createState() => new _HospitalDataState();
}

class _HospitalDataState extends State<HospitalData> {
  TextEditingController editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Search Hospital "),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 16.0, bottom: 16.0, left: 12.0, right: 12.0),
        child: Card(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (value) {},
                  controller: editingController,
                  decoration: InputDecoration(
                      labelText: "Search",
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.0)))),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('Nanyuki Cottage Hospital'),
                  subtitle: Text('Nanyuki'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('M.P Shah Hospital'),
                  subtitle: Text('Nairobi'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('Kenyatta National Hospital'),
                  subtitle: Text('Nairobi'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('Sabatia Eye Hospital'),
                  subtitle: Text('Nairobi'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('Karen Hospital'),
                  subtitle: Text('Nairobi'),
                  onTap: () {},
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.local_hospital),
                  title: Text('The Aga Khan University Hospital'),
                  subtitle: Text('Nairobi'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
