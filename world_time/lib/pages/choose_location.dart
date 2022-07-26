import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    print("InitState function ran");
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("Build function ran");
    return Scaffold(
      body: SafeArea(
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  counter += 1;
                });
              },
              child: Text("Counter is $counter"))),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
