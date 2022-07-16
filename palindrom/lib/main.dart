import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Palindrome';

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
              labelText: 'Input',
              hintText: 'Enter your Number',
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
                    int reversnum = 0;
                    int usernumber = num1;
                    int mod;
                    double res;
                    if (num1 < 0) {
                      _showToastFalse(context);
                    }
                    while (num1 != 0) {
                      mod = num1 % 10;
                      reversnum = reversnum * 10 + mod;
                      res = num1 / 10;
                    }
                    if (usernumber == reversnum) {
                      _showToastYes(context);
                    } else {
                      _showToastNo(context);
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
