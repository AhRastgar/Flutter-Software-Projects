import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Golden Number';

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
              labelText: 'Input',
              hintText: 'Enter your Number',
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
              ElevatedButton(
                child: Text("multiplication"),
                onPressed: () {
                  setState(() {
                    double multiplication = int.parse(num1.text) * 1.618;
                    result = multiplication.toString();
                  });
                },
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("division"),
                onPressed: () {
                  setState(() {
                    double division = int.parse(num1.text) / 1.618;
                    result = division.toString();
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
