import 'package:flutter/material.dart';
import 'package:flutter_widgets/app/globals/style/styles.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToastMessage(String message, {Color? color, ToastGravity? gravity}) {
  String rgbaColor = 'rgba(234,32,39,1.0)';
  if (color != null) {
    rgbaColor =
        'rgba(${color.red},${color.green},${color.blue},${color.alpha})';
  }
  Fluttertoast.showToast(
    webBgColor: rgbaColor,
    webPosition: webToastPosition(gravity ?? ToastGravity.BOTTOM),
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    timeInSecForIosWeb: 5,
    gravity: gravity ?? ToastGravity.BOTTOM,
    textColor: AppColors.white,
    fontSize: 20.0,
  );
}

webToastPosition(ToastGravity toastGravity) {
  switch (toastGravity) {
    case ToastGravity.BOTTOM:
      return 'bottom';
    case ToastGravity.TOP:
      return 'top';
    case ToastGravity.CENTER:
      return 'center';
    default:
      return 'right';
  }
}

showDangerToastMessage(String message, {ToastGravity? gravity}) =>
    showToastMessage(message, color: AppColors.danger, gravity: gravity);

showSuccessToastMessage(String message, {ToastGravity? gravity}) =>
    showToastMessage(message, color: AppColors.success, gravity: gravity);

showInfoToastMessage(String message, {ToastGravity? gravity}) =>
    showToastMessage(message, color: AppColors.info, gravity: gravity);

showWarningToastMessage(String message, {ToastGravity? gravity}) =>
    showToastMessage(message, color: AppColors.warning, gravity: gravity);
