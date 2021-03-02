import 'package:flutter/material.dart';

class Contain extends StatelessWidget {
  const Contain({
    Key key,@required this.convertHandler,
  }) : super(key: key);
final Function convertHandler;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: new RaisedButton(
        child: new Text("Hitung",
            style: new TextStyle(
              color: Colors.white,
            )),
        colorBrightness: Brightness.dark,
        onPressed: () {
      
           this.convertHandler();
          
        },
        color: Colors.blue,
      ),
    );
  }
}
