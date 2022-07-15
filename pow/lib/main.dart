import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Pow Number';

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
              labelText: 'Number',
              hintText: 'Enter Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              ElevatedButton(
                child: Text("power 1"),
                onPressed: () {
                  setState(() {
                    var pow1 = int.parse(num1.text);
                    result = pow1.toString();
                  });
                },
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("power 2"),
                onPressed: () {
                  setState(() {
                    var pow2 = int.parse(num1.text) * int.parse(num1.text);
                    result = pow2.toString();
                  });
                },
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("power 3"),
                onPressed: () {
                  setState(() {
                    var pow3 = int.parse(num1.text) *
                        int.parse(num1.text) *
                        int.parse(num1.text);
                    result = pow3.toString();
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
