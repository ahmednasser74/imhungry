import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iam_hungry2/core/src/colors.dart';

class HelperMethods {
  static showToast({
    required String msg,
    ToastGravity gravity = ToastGravity.BOTTOM,
    Toast toastLength = Toast.LENGTH_SHORT,
    Color backgroundColor = CustomColors.primaryColor,
    Color textColor = CustomColors.whiteColor,
    double fontSize = 16,
  }) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: toastLength,
      gravity: gravity,
      fontSize: fontSize,
      backgroundColor:backgroundColor,
      textColor:textColor,
    );
  }
  static  Widget onCacheImageLoading(
      BuildContext context,
      String string,
      DownloadProgress downloadProgress,
      ) =>
      SvgPicture.asset(
        'assets/images/iam_hungry_bite_logo.svg',
        color: CustomColors.redLightColor,
        height: 50,
        width: 50,
      );

}
