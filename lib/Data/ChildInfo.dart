import 'package:flutter/material.dart';

class childinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Health data"),
          centerTitle: true,
        ),
        body: Card(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Details of the Child'),
            ),
          ),
        ));
  }
}
