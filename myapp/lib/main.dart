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
        child: Column(
          children: [
            const Icon(
              Icons.airport_shuttle,
              color: Colors.lightBlue,
              size: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                // ignore: avoid_print
                print("You clicked me");
              },
              child: const Text("Click me"),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.mail),
                label: const Text("Mail me")),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.alternate_email))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[600],
        child: const Text("Click me"),
      ),
    );
  }
}
