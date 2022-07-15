// import 'dart:convert';
// import 'dart:ffi';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Odd Number';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: AddTwoNumbers(),
      ),
    );
  }
}

class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            controller: num1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Number',
              hintText: 'Enter First Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: num2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Second Number',
              hintText: 'Enter Second Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              SizedBox(
                height: 20,
                width: 20,
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("Calculate"),
                onPressed: () {
                  setState(() {
                    var product = 1;
                    int j = int.parse(num2.text);
                    int i = int.parse(num1.text);
                    for (; i < j; i++) {
                      if (i % 2 == 1) {
                        product *= i;
                      }
                    }

                    result = product.toString();
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text('Result : $result'),
        ],
      ),
    );
  }
}
