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
      body: Center(
        child: Image.asset("assets/image-2.jpg"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text("Click me"),
      ),
    );
  }
}
