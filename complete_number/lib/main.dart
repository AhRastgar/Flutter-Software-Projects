import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Complete Number';

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
              labelText: 'Complete Number',
              hintText: 'Enter your number',
            ),
          ),
          SizedBox(
            height: 20,
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
                    double num1 = double.parse(num1controller.text);
                    var sum = 0;
                    double temp = num1 / 2;
                    var newtemp = 0;
                    var i = 2;
                    String wrong = "No";
                    String write = "Yes";
                    while (i <= temp) {
                      if (num1 % i == 0) {
                        _showToast1(context);
                      }
                      break;
                    }
                    if (newtemp == 0) {
                      _showToast(context);
                    }
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Yes'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void _showToast1(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('No'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
