import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saib_clone_2/widgets/extra_items.dart';
import 'package:saib_clone_2/widgets/logo.dart';
import 'package:saib_clone_2/widgets/main_background.dart';
import 'package:saib_clone_2/widgets/my_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _check = false;
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(
            child: _form(),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.red.withOpacity(0),
        height: 56,
        child: ExtraIconsRow(
          showLabels: false,
        ),
      ),
    );
  }

  _form() {
    return ListView(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            margin: EdgeInsets.only(top: height < 600 ? 20 : 50),
            child: Logo()),
        Container(
            child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: height < 600 ? 5 : 30)),
            Center(
              child: Container(
                width: 250,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelText: "User Name",
                            labelStyle: TextStyle(color: Colors.grey)),
                      ),
                      TextFormField(
                        obscureText: !_showPassword,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                child: _showPassword
                                    ? Image.asset(
                                        "assets/icons/unhide.png",
                                        color: Colors.grey,
                                      )
                                    : Image.asset("assets/icons/eye.png")),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.grey)),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              onChanged: (check) {
                                setState(() {
                                  _check = check;
                                });
                              },
                              //activeColor: Colors.white,
                              //title: Text("Remember Me"),
                              value: _check),
                          Text(
                            "Remember me",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Arial",
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            MyButton(
              text: "Login",
              onPressed: () => null,
            ),
            Padding(padding: EdgeInsets.only(top: height < 600 ? 10 : 30)),
            GestureDetector(
                onTap: null,
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontWeight: FontWeight.w200),
                )),
            Padding(padding: EdgeInsets.only(top: height < 600 ? 10 : 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont have an account ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w200),
                ),
                GestureDetector(
                    onTap: null,
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
          ],
        )),
      ],
    );
  }
}
