import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saib_clone_2/widgets/extra_items.dart';
import 'package:saib_clone_2/widgets/logo.dart';
import 'package:saib_clone_2/widgets/main_background.dart';
import 'package:saib_clone_2/widgets/my_button.dart';
import 'package:saib_clone_2/widgets/language_button.dart';
import 'login.dart';

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
        fontFamily: "assets/icons/Roboto-Light.ttf",
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {"/": (context) => MyHomePage(), "/login": (context) => Login()},
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
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(child: _buttons(),),
          Positioned(
            right: 30,
            top: height < 600 ? 130 : 170,
            child: LanguageButton(),)
        ],
      ),
    );
  }

  _buttons() {
    return ListView(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(

            margin: EdgeInsets.only(top: height < 600 ? 60 : 100),
            child: Logo()),
        Padding(padding: EdgeInsets.only(top: 35),),
        Align(
          child: Text(
            "Welcome",
            style: TextStyle(
                color: Colors.white,
                fontSize: width > 700 ? 20 : 16,
                fontWeight: FontWeight.w300),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 30)),
        ExtraIconsRow(),
        Padding(padding: EdgeInsets.only(top: 30),),
        Container(
          height: width > 700 ? 150 : 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButton(
                text: "Login",
                onPressed: () => Navigator.pushNamed(context, "/login"),
              ),
              MyButton(
                text: "Register",
                onPressed: () => null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
