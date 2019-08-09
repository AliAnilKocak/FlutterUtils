import 'package:example/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter_Utils llibrary example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final router = Router();
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Util"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Route"),
          onPressed: () {
            widget.router.navigateToWithFadeAnimation(context,Second());
          },
        ),
      ),
    );
  }
}
