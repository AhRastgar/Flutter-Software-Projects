import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Average';

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
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  TextEditingController num3controller = new TextEditingController();
  TextEditingController num4controller = new TextEditingController();
  TextEditingController num5controller = new TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            controller: num1controller,
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
            controller: num2controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Second Number',
              hintText: 'Enter Second Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: num3controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'third Number',
              hintText: 'Enter third Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: num4controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'fourth Number',
              hintText: 'Enter fourth Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: num5controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'fiveth Number',
              hintText: 'Enter fiveth Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              ElevatedButton(
                child: Text("Calculate"),
                onPressed: () {
                  setState(() {
                    int num1 = int.parse(num1controller.text);
                    int num2 = int.parse(num2controller.text);
                    int num3 = int.parse(num3controller.text);
                    int num4 = int.parse(num4controller.text);
                    int num5 = int.parse(num5controller.text);

                    var sum = num1 + num2 + num3 + num4 + num5;
                    var res = sum / 5;

                    result = res.toString();
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
