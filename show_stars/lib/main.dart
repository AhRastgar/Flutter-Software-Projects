import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Show Star';

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
              labelText: 'Star Number',
              hintText: 'Enter star Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              ElevatedButton(
                child: Text("Show"),
                onPressed: () {
                  setState(() {
                    var Show;

                    int Star = int.parse(num1controller.text);

                    for (int i = 0; i < Star; i++) {
                      Show = "$i+1(*)";
                    }

                    result = Show.toString();
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
