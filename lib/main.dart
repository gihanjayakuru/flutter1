import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gihan J',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: myhomepage(),
    );
  }
}

class myhomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("hello world")), body: TextinputWidget());
  }
}

class testWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("data");
  }
}

///////

class TextinputWidget extends StatefulWidget {
  @override
  _TextinputWidgetState createState() => _TextinputWidgetState();
}

class _TextinputWidgetState extends State<TextinputWidget> {
  final controller = TextEditingController();
  String text = "";
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void changeText(text) {
    if (text == "hello world") {
      controller.clear();
      text = "";
    }
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        controller: this.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.message), labelText: "Type a message"),
        onChanged: (text) => this.changeText(text),
      ),
      Text(this.text)
    ]);
  }
}
