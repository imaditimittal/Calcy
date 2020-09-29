import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: "");
  final TextEditingController t2 = TextEditingController(text: "");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doreset() {
    setState(() {
      t1.text = "";
      t2.text = "";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 40.0, left: 40.0, top: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter first number"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter second number"),
              controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                    child: Text(
                      "+",
                      style: TextStyle(fontSize: 30.0),
                    ),
                    color: Colors.greenAccent,
                    onPressed: doAddition),
                MaterialButton(
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 30.0),
                    ),
                    color: Colors.greenAccent,
                    onPressed: doSub)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                    child: Text(
                      "*",
                      style: TextStyle(fontSize: 30.0),
                    ),
                    color: Colors.greenAccent,
                    onPressed: doMul),
                MaterialButton(
                    child: Text(
                      "/",
                      style: TextStyle(fontSize: 30.0),
                    ),
                    color: Colors.greenAccent,
                    onPressed: doDiv)
              ],
            ),
            MaterialButton(
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.greenAccent,
                onPressed: doreset),
            Text(
              "Solution: $sum",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            )
          ],
        ),
      ),
    );
  }
}
