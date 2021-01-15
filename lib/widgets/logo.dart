import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/line.png"),
              Positioned(
                left: width>700?(width/2)-140:(width/2)-75,
                //top: MediaQuery.of(context).size.width>700?10:0,
                child: Image.asset("assets/icons/ic_plane.png",
                width: width>700?120:60,
                  height: width>700?120:60,
                ),
              )
            ],
          ),

          Center(
            child: Image.asset("assets/logo_saib.png",
            width: width>700?350:height<600?200:250,
            ),
          )
        ],
      ),
    );
  }
}
