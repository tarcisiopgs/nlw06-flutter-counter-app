import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple), home: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Primeiro App'),
      ),
      body: Center(
          child: Text(
        'CONTADOR\n$count',
        textAlign: TextAlign.center,
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          incrementCounter();
        },
      ),
    );
  }
}
