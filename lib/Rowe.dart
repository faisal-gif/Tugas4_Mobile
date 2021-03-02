import 'package:flutter/material.dart';

class Rowe extends StatelessWidget {
  const Rowe({
    Key key,
    @required double hasil,
  })  : _hasil = hasil,
        super(key: key);

  final double _hasil;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hasil",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            _hasil.toStringAsFixed(1),
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}
