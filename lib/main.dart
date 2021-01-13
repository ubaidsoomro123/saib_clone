import 'package:flutter/material.dart';
import 'package:saib_clone/widgets/extra_items.dart';
import 'package:saib_clone/widgets/logo.dart';
import 'package:saib_clone/widgets/main_background.dart';
import 'package:saib_clone/widgets/my_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
          children: <Widget>[
            Background(),
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top:100),
                    child: Logo()),
                Padding(padding: EdgeInsets.only(top: 50),
                child: Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 16),)),
                Padding(child: ExtraIconsRow(), padding: EdgeInsets.only(top:35),),

                Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyButton(text: "Login"),
                      MyButton(text: "Register"),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
    );
  }
}
