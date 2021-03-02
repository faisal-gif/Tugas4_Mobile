import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    Key key,
    @required this.inputController,
  }) : super(key: key);

  final TextEditingController inputController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
       controller: inputController,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false,
        ),
        decoration: InputDecoration(hintText: 'Masukan Suhu Dalam Celcius'),
      ),
    );
  }
}
