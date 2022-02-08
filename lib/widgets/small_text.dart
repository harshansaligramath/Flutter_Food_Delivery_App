import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
   SmallText({Key? key, this.color=const Color(0xFFccc7c5), 
  required this.text,
  this.size=12,
  this.height=1.2,
  // this.overFlow=TextOverflow.ellipsis,

  }) : super(key: key);
  Color? color;
  final String text;
  double size;
  double height;
  // TextOverflow overFlow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
       height: height,
        fontSize: size
      ),
    );
  }
}
