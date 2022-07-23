import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My First App"),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: <Widget>[
          Expanded(child: Image.asset("assets/image-1.jpg")),
          Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: const Text("1"),
              )),
          Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.pinkAccent,
                child: const Text("3"),
              )),
          Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.amber,
                child: const Text("3"),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text("Click me"),
      ),
    );
  }
}
