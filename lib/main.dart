import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

import 'Convert.dart';
import 'Riwayat.dart';
import 'Rowe.dart';
import 'TextForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  double _inputUser = 0;

  double _hasil = 0;
  final inputController = TextEditingController();
  List<String> listItem = ["Kelvin", "Reamur", "Farenheit"];
  List<String> listViewItem = List<String>();
  String _newValue = "Kelvin";
  void perhitunganSuhu() {
    setState(() {
      _inputUser = double.parse(inputController.text);
      if (_newValue == "Kelvin")
        _hasil = _inputUser + 273;
      else if (_newValue == "Reamur")
        _hasil = (4 / 5) * _inputUser;
      else
      _hasil = (_inputUser * (9 / 5)) + 32;
      listViewItem.add("$_newValue" ":" "$_hasil");
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              TextForm(inputController: inputController),
              DropdownButton<String>(
                items: listItem.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                value: _newValue,
                onChanged: (String changeValue) {
                  setState(() {
                    _newValue = changeValue;
                    perhitunganSuhu();
                  });
                },
              ),
              Rowe(hasil: _hasil),
              Contain(convertHandler: perhitunganSuhu),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Riwayat Konversi",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Riwayat(listViewItem: listViewItem),
              
            ],
          ),
        ),
      ),
    );
  }
}


