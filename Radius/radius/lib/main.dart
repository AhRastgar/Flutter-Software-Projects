import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Title = 'Radius';

    return MaterialApp(
      title: Title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Title),
        ),
        body: addNumber(),
      ),
    );
  }
}

class addNumber extends StatefulWidget {
  @override
  _addNumberstate createState() => _addNumberstate();
}

class _addNumberstate extends State<addNumber> {
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
              labelText: 'Radius',
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
                child: Text("Environment"),
                onPressed: () {
                  setState(() {
                    double invironment = int.parse(num1.text) * 3.14 * 2;
                    result = invironment.toString();
                  });
                },
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("Diameter"),
                onPressed: () {
                  setState(() {
                    double diamter = int.parse(num1.text) * 2;
                    result = diamter.toString();
                  });
                },
              ),
              SizedBox(
                height: 20,
                width: 20,
              ),
              ElevatedButton(
                child: Text("Area"),
                onPressed: () {
                  setState(() {
                    double area =
                        int.parse(num1.text) * int.parse(num1.text) * 3.14;
                    result = area.toString();
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
