// import 'package:flutter/material.dart';

// class SizeConfig {
//   static MediaQueryData? _mediaQueryData;
//   static double? screenWidth;
//   static double? screenHeight;
//   static double? defaultSize;
//   static Orientation? orientation;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData!.size.width;
//     screenHeight = _mediaQueryData!.size.height;
//     orientation = _mediaQueryData!.orientation;
//     // On iPhone 11 the defaultSize = 10 almost
//     // So if the screen size increase or decrease then our defaultSize also vary

//     if (screenWidth! > 550) {
//       // Tablet devices
//       defaultSize = screenWidth! * 0.014;
//     } else {
//       // Non-tablet devices
//       defaultSize = screenWidth! * 0.020;
//     }

//     //  defaultSize = orientation == Orientation.landscape ? screenHeight! * 0.024 : screenWidth! * 0.024;
//   }
// }

// // double getFont(double size) {
// //   double defaultsSize = SizeConfig.defaultSize! * size;
// //   return size;
// // }

// double getFont(double size) {
//   double defaultsSize = SizeConfig.defaultSize! * size;
//   return (defaultsSize / 10);
// }

// // Get the proportionate height as per screen size
// double getHeight(double inputHeight) {
//   double screenHeight = SizeConfig.screenHeight!;
//   // 812 is the layout height that designer use
//   return (inputHeight / 844.0) * screenHeight;
// }

// double getWidth(double inputWidth) {
//   double screenWidth = SizeConfig.screenWidth!;
//   // 375 is the layout width that Figma provides
//   return (inputWidth / 402.0) * screenWidth;
// }

// double getTabLetHeight(double inputHeight) {
//   double screenHeight = SizeConfig.screenHeight!;
//   // 812 is the layout height that designer use
//   return (inputHeight / 1133.0) * screenHeight;
// }

// // Get the proportionate width as per screen size

// double getTabletWidth(double inputWidth) {
//   double screenWidth = SizeConfig.screenWidth!;
//   // 375 is the layout width that Figma provides
//   return (inputWidth / 744.0) * screenWidth;
// }

// bool isLandscapeView(BuildContext context) {
//   final size = MediaQuery.of(context).size.width;
//   int responsiveWidth = 550;
//   if (size > responsiveWidth) {
//     return true;
//   } else {
//     return false;
//   }
// }

import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;

    if (screenWidth! > 550) {
      defaultSize = screenWidth! * 0.014;
    } else {
      defaultSize = screenWidth! * 0.020;
    }
  }


  static double getHeight(double inputHeight) {
    double screenHeight = SizeConfig.screenHeight ?? 812.0; // Default to 812 if null
    return (inputHeight / 812.0) * screenHeight;
  }

  static double getWidth(double inputWidth) {
    double screenWidth = SizeConfig.screenWidth ?? 375.0; // Default to 375 if null
    return (inputWidth / 375.0) * screenWidth;
  }
  static double getFont(double size) {
  double defaultsSize = SizeConfig.defaultSize! * size;
  return (defaultsSize / 10);
}
}
