import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Character Between Numbers';

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
  TextEditingController char1controller = new TextEditingController();

  var result;
  var num1;
  var num2;
  var num3;
  var num4;
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
              labelText: 'Input Number',
              hintText: 'Enter your Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            keyboardType: TextInputType.text,
            controller: char1controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Input Char',
              hintText: 'Enter your Char',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              ElevatedButton(
                child: Text("Submit"),
                onPressed: () {
                  setState(() {
                    int num = int.parse(num1controller.text);
                    int i = 0;
                    int modnum = 0;
                    int inputreverse = 0;
                    double res;
                    while (i < num) {
                      modnum = num % 10;
                      inputreverse *= 10 + modnum;
                      res = num / 10;
                    }
                    double res1;
                    for (int j = inputreverse; 0 < inputreverse; j++) {
                      modnum = inputreverse % 10;
                      res1 = inputreverse / 10;
                      print(inputreverse);
                      print(char1controller);
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

  void _showToastYes(BuildContext Yes) {
    final scaffold = ScaffoldMessenger.of(Yes);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Yes'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void _showToastNo(BuildContext No) {
    final scaffold = ScaffoldMessenger.of(No);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('No'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void _showToastFalse(BuildContext False) {
    final scaffold = ScaffoldMessenger.of(False);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('False'),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
