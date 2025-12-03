import 'package:flutter/material.dart';

class Dimensions {
  static late double screenHeight;
  static late double screenWidth;
  static late double factor;

  //Height Scales
  static late double height1p2;
  static late double height2;
  static late double height3;
  static late double height5;
  static late double height10;
  static late double height15;
  static late double height20;
  static late double height30;
  static late double height45;
  static late double height200;
  static late double height300;

  //Width Scales
  static late double width5;
  static late double width10;
  static late double width15;
  static late double width20;
  static late double width30;
  static late double width45;
  static late double width250;

  //Font Sizes
  static late double font10;
  static late double font12;
  static late double font14;
  static late double font16;
  static late double font20;
  static late double font26;

  //Radius
  static late double radius15;
  static late double radius20;
  static late double radius30;

  //Icon Size
  static late double size12;
  static late double size16;
  static late double size24;


  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    factor = MediaQuery.of(context).textScaler.scale(1.0);

    height1p2 = screenHeight / 703.34;
    height2 = screenHeight / 422;
    height3 = screenHeight / 281.34;
    height5 = screenHeight / 169.00;
    height10 = screenHeight / 84.4;
    height15 = screenHeight / 56.27;
    height20 = screenHeight / 42.2;
    height30 = screenHeight / 28.13;
    height45 = screenHeight / 18.76;
    height200 = screenHeight / 4.22;
    height300 = screenHeight / 2.81;

    width5 = screenHeight / 168.8;
    width10 = screenHeight / 84.4;
    width15 = screenHeight / 56.27;
    width20 = screenHeight / 42.2;
    width30 = screenHeight / 28.13;
    width45 = screenHeight / 18.76;
    width250 = screenHeight / 3.66;

    font10 = screenHeight / 84.40;
    font12 = screenHeight / 70.34;
    font14 = screenHeight / 60.28;
    font16 = screenHeight / 52.75;
    font20 = screenHeight / 42.2;
    font26 = screenHeight / 32.46;

    radius15 = screenHeight / 56.27;
    radius20 = screenHeight / 42.2;
    radius30 = screenHeight / 28.13;

    size12 = screenHeight / 70.34;
    size16 = screenHeight / 52.75;
    size24 = screenHeight / 35.17;
  }
}
