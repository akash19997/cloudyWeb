import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../constants/color/color_constant.dart';

class Loader {
  static Widget loadingIndicatorLogin(bool busy, double deviceHeight) {
    if (busy) {
      return Container(
        color: ColorConstant.tmblackeshWhite.withOpacity(0.9),
        height: deviceHeight,
        child: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
              color: ColorConstant.pink700Primary, size: 80),
        ),
      );
    } else {
      return Container();
    }
  }

  static Widget loadingIndicatorDefault(
    bool busy,
  ) {
    if (busy) {
      return Container(
        color: Colors.transparent,
        // height: deviceHeight,
        child: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
              color: ColorConstant.pink700Primary, size: 80),
        ),
      );
    } else {
      return Container();
    }
  }

  static Widget loadingIndicatorDefaultBottom(
    bool busy,
  ) {
    if (busy) {
      return Container(
        color: Colors.transparent,
        height: 320,
        child: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
              color: ColorConstant.pink700Primary, size: 80),
        ),
      );
    } else {
      return Container();
    }
  }

  static Widget loadingIndicatorForNavigatingBack(
    bool busy,
  ) {
    if (busy) {
      return Container(
        color: ColorConstant.tmblackeshWhite.withOpacity(0.9),
        // height: deviceHeight,
        child: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
              color: ColorConstant.pink700Primary, size: 80),
        ),
      );
    } else {
      return Container();
    }
  }

  static Widget loadingIndicatorIsExpansion(
    bool busy,
  ) {
    if (busy) {
      return Container(
        decoration: BoxDecoration(
            color: ColorConstant.tmblackeshWhite.withOpacity(0.9),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        height: 505,
        child: Center(
          child: LoadingAnimationWidget.staggeredDotsWave(
              color: ColorConstant.pink700Primary, size: 80),
        ),
      );
    } else {
      return Container();
    }
  }
}
