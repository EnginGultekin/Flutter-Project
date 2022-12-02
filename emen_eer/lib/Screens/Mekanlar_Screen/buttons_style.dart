  import 'package:flutter/material.dart';
import '../../Tema-Stiller-Listeler/thema_data.dart';

class FlattButtonStyle extends StatelessWidget {
  final Color? color;
  final String text;
  final IconData icon;
  final Function()? onpress;

  FlattButtonStyle({
    required this.text,
    required this.icon,
    required this.onpress,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onpress,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.deepPurple,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      height: 24,
      color: color ?? buttonPurpleColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
             style: text == 'Rezerve' ? CardStili2_2 : CardStili2_2_1 ,


          ),
          SizedBox(
            width: 7,
          ),
          Icon(
            icon,
            size: 9,
            color: text == 'Rezerve' ? whiteColor2 : buttonPurpleColor,
          ),
        ],
      ),
    );
  }
}
