import 'package:flutter/material.dart';
import 'package:food_delivery_android_app/utils/colors.dart';
import 'package:food_delivery_android_app/utils/dimensions.dart';
import 'package:food_delivery_android_app/widgets/big_text.dart';
import 'package:food_delivery_android_app/widgets/icon_and_text_widget.dart';
import 'package:food_delivery_android_app/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({ Key? key,required this.text }) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: text,size: Dimensions.font26,),
                  SizedBox(
                    height: Dimensions.height10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  color: AppColors.mainColor,
                                  size: 15,
                                )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "4.5"),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "1287"),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "comments")
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndTextWidget(
                        icon: Icons.circle_sharp,
                        text: "Normal",
                        iconcolor: AppColors.iconColor1,
                      ),
                      IconAndTextWidget(
                          icon: Icons.location_on,
                          text: "1.7Km",
                          iconcolor: AppColors.mainColor),
                      IconAndTextWidget(
                          icon: Icons.access_time_rounded,
                          text: "32min",
                          iconcolor: AppColors.iconColor2)
                    ],
                  )
                ],
              );
  }
}