import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Settings "),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Setting to modify changes in the child data'),
      ),
    );
  }
}
