import 'package:flutter/material.dart';
import 'package:food_delivery_android_app/utils/dimensions.dart';

class BigText extends StatelessWidget {
   BigText({Key? key, this.color=const Color(0xFF332d2b), 
  required this.text,
  this.size=0,
  this.overFlow=TextOverflow.ellipsis,

  }) : super(key: key);
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size==0? Dimensions.font20:size
      ),
    );
  }
}
