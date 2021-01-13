import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/line.png"),
              Positioned(
                left: 110,
                child: Image.asset("assets/ic_plane.png",
                width: 60,
                  height: 60,
                ),
              )
            ],
          ),

          Center(
            child: Image.asset("assets/logo_saib.png",
            width: 250,
            ),
          )
        ],
      ),
    );
  }
}
