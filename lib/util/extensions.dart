import 'dart:io';
import 'package:flutter/material.dart';

extension Util on BuildContext {
  bool get isTablet {
    bool isPortrait = MediaQuery.of(this).orientation == Orientation.portrait;
    return MediaQuery.of(this).size.shortestSide >= (isPortrait ? 600 : 540);
  }

  bool get isIPad => isTablet && Platform.isIOS;
}