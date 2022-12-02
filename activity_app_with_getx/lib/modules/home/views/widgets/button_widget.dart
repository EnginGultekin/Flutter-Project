import 'package:activity_app_with_getx/globals/styles/app_colors.dart';
import 'package:flutter/material.dart';


/*
*   Ana Ekranda bulunan 3 butonun yapısını oluşturan kısım
*   sadece  aşağıdaki gibi 4 özelliği verince her şey hallediliyor
*/


class MyButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Function()? onPressed;
  final IconData? icon;

  const MyButton({Key? key, required this.text, this.color, this.onPressed, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 32,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: color ?? AppColors.secondary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              fontFamily: 'background',
              color: AppColors.whiteColor5,
            ),
          ),
          VerticalDivider(
            width: 10,
          ),
          icon != null ? Icon(icon) : SizedBox(),
        ],
      ),
      colorBrightness: Brightness.dark,
      minWidth: 120,
      onPressed: onPressed,
    );
  }
}
