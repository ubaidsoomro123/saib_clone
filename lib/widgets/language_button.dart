import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final String text;
  const LanguageButton({Key key, this.text = "AR"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: Center(
          child: Text(text)),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
    );
  }
}
