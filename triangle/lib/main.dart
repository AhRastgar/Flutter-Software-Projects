import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Add Radius of circle';

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
              labelText: 'Three Number',
              hintText: 'Enter Three Number',
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
                child: Text("Calculate"),
                onPressed: () {
                  setState(() {
                    var sideA = int.parse(num1controller.text);
                    var sideB = int.parse(num2controller.text);
                    var sideC = int.parse(num3controller.text);

                    if (sideA + sideB > sideC &&
                        sideA + sideC > sideB &&
                        sideC + sideB > sideA) {
                      _showToastYES(context);
                    } else {
                      _showToastNO(context);
                    }
                  });
                },
              ),
              SizedBox(
                height: 20,
                width: 20,
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

  void _showToastYES(BuildContext Yes) {
    final scaffold = ScaffoldMessenger.of(Yes);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('this numbers can create triangle'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void _showToastNO(BuildContext NO) {
    final scaffold = ScaffoldMessenger.of(NO);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('this numbers can not create triangle'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
