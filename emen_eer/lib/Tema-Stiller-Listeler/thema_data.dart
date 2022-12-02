
import 'package:flutter/material.dart';

Map<int, Color> colorlar = {
  50 : Color(0xFFbe2edd),

};


// Tema
ThemeData green = ThemeData(
  buttonColor: Colors.green.shade300,
  primarySwatch: Colors.green,
  scaffoldBackgroundColor: Colors.green.shade50,
);
ThemeData red = ThemeData(
  buttonColor: Colors.red.shade300,
  primarySwatch: Colors.red,
  scaffoldBackgroundColor: Colors.red.shade50,
);
ThemeData blue = ThemeData(
  buttonColor: Colors.blue.shade300,
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.red.shade50,
);
ThemeData purple = ThemeData(
  buttonColor: Color(0xFFF3F3F3),
  primarySwatch: Colors.deepPurple,
  scaffoldBackgroundColor:Color(0xFFF3F3F3),
);
ThemeData orange = ThemeData(
  buttonColor: Colors.deepOrange.shade300,
  primarySwatch: Colors.deepOrange,
  scaffoldBackgroundColor: Colors.red.shade50,
);

// Ana Ekran Başlığı
RichText baslik1 = RichText(
  text: TextSpan(
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontFamily: 'MochiyPopPOne',
      letterSpacing: 2.0,
    ),
    children: <TextSpan>[
      TextSpan(
        text: 'h',
        style: TextStyle(
          color: whiteColor1,
          fontSize: 34.0,
        ),
      ),
      TextSpan(
        text: 'EMEN',
        style: TextStyle(
          color: whiteColor1,
          fontSize: 24.0,
        ),
      ),
      TextSpan(
        text: '-',
        style: TextStyle(
          color: whiteColor1,
          fontSize: 34.0,
        ),
      ),
      TextSpan(
        text: 'BUL',
        style: TextStyle(
          color: whiteColor1,
          fontSize: 24.0,
        ),
      ),
    ],
  ),
);
RichText baslik1_1 = RichText(
  text: TextSpan(
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontFamily: 'MochiyPopPOne',
      letterSpacing: 2.8,
    ),
    children: <TextSpan>[
      TextSpan(
        text: 'h',
        style: TextStyle(
          color: whiteColor1,
          fontSize: 58.0,
        ),
      ),
      TextSpan(
        text: 'EMEN',
        style: TextStyle(
          color: whiteColor1,
          fontSize: 32.0,
        ),
      ),
      TextSpan(
        text: '-',
        style: TextStyle(
          color: whiteColor1,
          fontSize: 48.0,
        ),
      ),
      TextSpan(
        text: 'BUL',
        style: TextStyle(
          color: whiteColor1,
          fontSize: 32.0,
        ),
      ),
    ],
  ),
); //Ekleme Ekranı Başlık 2
RichText baslik2 = RichText(
  text: TextSpan(
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      letterSpacing: 2.0,
    ),
    children: <TextSpan>[
      TextSpan(
        text: 'ADD ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 26.0,
        ),
      ),
      TextSpan(
        text: 'new',
        style: TextStyle(
          color: Colors.cyanAccent,
          fontSize: 24.0,
        ),
      ),
      TextSpan(
        text: ' NOTE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 26.0,
        ),
      ),
    ],
  ),
);
//Ekleme Ekranı Başlık 3
RichText baslik3 = RichText(
  text: TextSpan(
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      letterSpacing: 2.0,
    ),
    children: <TextSpan>[
      TextSpan(
        text: 'UPDATE ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 26.0,
        ),
      ),
      TextSpan(
        text: 'this',
        style: TextStyle(
          color: Colors.cyanAccent,
          fontSize: 24.0,
        ),
      ),
      TextSpan(
        text: ' NOTE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 26.0,
        ),
      ),
    ],
  ),
);


Color whiteColor1 = Color(0xFFF7F7F7);
Color whiteColor2 = Color(0xFFF5F5F5);
Color blackColor1 = Color(0xFF4F4F4F);
Color blackColor2 = Color(0xFF9F9F9F);
Color buttonPurpleColor = Colors.deepPurple;
Color homeColor = Color(0xFFbe2edd);


TextStyle CardStili1 = TextStyle(
  fontFamily: 'TheNautigal',
  fontSize: 36,
  color: Colors.black54,
);
TextStyle CardStiliHome = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 12,
  color: blackColor1,
);
TextStyle CardStili2 = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 8,
  color: blackColor1,
);
TextStyle CardStili2_1 = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 9,
  color: blackColor2,
);
TextStyle CardStili2_2 = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 7,
  color: whiteColor2,
);
TextStyle CardStili2_2_1 = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 7,
  color: buttonPurpleColor,
);
TextStyle CardStili3 = TextStyle(
  fontFamily: 'SquarePeg',
  fontSize: 40,
  color: Colors.black54,

);
TextStyle CardStili4 = TextStyle(
  fontFamily: 'Pacifico',
  fontSize: 24,
  color: Colors.black54,

);
TextStyle MekanStili = TextStyle(
  color: Colors.deepPurple,
  fontWeight: FontWeight.w600,
);

TextStyle Mekan1 = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 10,
  color: blackColor1,
);
TextStyle Mekan2 = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 11,
  color: blackColor2,
);

TextStyle Menu1 = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 13,
  color: blackColor1,
);
TextStyle Menu2 = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 12,
  color: blackColor2,
);

TextStyle MekanAcik = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 8,
  color: Colors.green[600],
);
TextStyle MekanKapali = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 8,
  color: Colors.red[600],
);

TextStyle KonumStili = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 12,
  color: buttonPurpleColor,
);

TextStyle YorumlarStili = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 13,
  color: blackColor1,
  letterSpacing: 1.1,
);
TextStyle YorumKutusu = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 12,
  color: Colors.grey,
);
TextStyle PuanlaStili = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 12,
  color: blackColor2,
  letterSpacing: 1.6,
);
TextStyle PuanlaStili2 = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 12,
  color: blackColor1,
  letterSpacing: 1.6,
);
TextStyle GonderStili = TextStyle(
  fontFamily: 'MochiyPopPOne',
  fontSize: 14,
  color: buttonPurpleColor,
);
double heigthScreen(BuildContext context,double olcek){
  return MediaQuery.of(context).size.height*olcek;
}

double widthScreen(BuildContext context,double olcek){
  return MediaQuery.of(context).size.width*olcek;
}







