import 'package:flutter/material.dart';

class ExtraIconsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            IconButton(icon: Image.asset("assets/ic_aboutus.png"), onPressed: null,iconSize: 40, tooltip: "About Us",),
            Text("About US",style: TextStyle(color: Colors.white),)
          ],
        ),
        Column(
          children: [
            IconButton(icon: Image.asset("assets/ic_locator.png"), onPressed: null,iconSize: 40,),
            Text("ATM Locator",style: TextStyle(color: Colors.white),)
          ],
        ),
        Column(
          children: [
            IconButton(icon: Image.asset("assets/ic_phone.png"), onPressed: null,iconSize: 40,),
            Text("Contact US",style: TextStyle(color: Colors.white),)
          ],
        )
      ],
    );
  }
}
