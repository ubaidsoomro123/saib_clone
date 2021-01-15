import 'package:flutter/material.dart';

class ExtraIconsRow extends StatelessWidget {
  final bool showLabels;

  const ExtraIconsRow({Key key, this.showLabels = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            IconButton(icon: Image.asset("assets/icons/ic_aboutus.png"), onPressed: null,iconSize: 40, tooltip: "About Us",),
            Visibility(child: Text("About US",style: TextStyle(color: Colors.white),) , visible: showLabels,)
          ],
        ),
        Column(
          children: [
            IconButton(icon: Image.asset("assets/icons/ic_locator.png"), onPressed: null,iconSize: 40,),
            Visibility(child: Text("ATM Locator",style: TextStyle(color: Colors.white),) , visible: showLabels)
          ],
        ),
        Column(
          children: [
            IconButton(icon: Image.asset("assets/icons/ic_phone.png"), onPressed: null,iconSize: 40,),
            Visibility(child:Text("Contact US",style: TextStyle(color: Colors.white),) , visible: showLabels)
          ],
        )
      ],
    );
  }
}
