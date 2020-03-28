import 'package:flutter/material.dart';
import 'package:share/share.dart';

class sharethisapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Share now "),
      ),
      body: Center(
        child: FlatButton(
          child: Text(
            'Share',
            style: TextStyle(color: Color.fromRGBO(245, 93, 62, 1.0)),
          ),
          color: Colors.grey[100],
          onPressed: () {
            final RenderBox box = context.findRenderObject();
            Share.share('Hello this is a test',
                sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
          },
        ),
      ),
    );
  }
}
