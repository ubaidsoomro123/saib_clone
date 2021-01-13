import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String text;


  MyButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: null, child: Container(
      height: 50,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(50))
      ),
      child: Center(

        child: Text(text, style: TextStyle(fontSize: 16),),),
    ));
  }
}
