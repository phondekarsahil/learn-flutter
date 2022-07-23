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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: const Text("One"),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.pinkAccent,
            child: const Text("Two"),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.amber,
            child: const Text("Three"),
          ),
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
