import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  MyButton({@required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(200)),
      ),
      onPressed: onPressed,
      color: Colors.yellow,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w400),
      ),
      minWidth: width > 700 ? 300 : 250,
      height: width > 700
          ? 70
          : height < 600
              ? 40
              : 50,
    );
  }
}
