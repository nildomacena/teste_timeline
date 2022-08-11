import 'package:flutter/material.dart';

//--------------------------------------------------------------------//
//------------------------------Colors--------------------------------//
//--------------------------------------------------------------------//

class StyleColors {
  static const Color primary = Color(0xFF5451FB);
  static const Color secondary = Color(0xFF3A4156);
  static const Color accent = Color(0xff150F20);
  static const Color mainText = Colors.black;
  static Color colorPrimary = Color(0xFF5451FB);
  static Color colorSecondary = Color(0xFF3A4156);
  static Color colorComplement1 = Color(0xFF3A4156);
  static Color colorComplement2 = Color(0xFFB4D0F0);
  static Color colorComplement3 = Color(0xFFeceef2);
  static Color colorComplement4 = Color(0xFFf7f8fa);
  static Color colorComplement5 = Color(0xFFe2e5f0);
  static Color colorWhatsApp = Color(0xFF27a219);
  static Color colorGrey = Color(0xFF3A4156);
  static Color colorGreyText = Color(0xFF9193a4);
  static Color themeBackgroundLogin = Color(0xFFF5F6FA);
  static Color themeBackgroundMenu = Color(0xFF5451fb);
  static Color themeBackgroundPages = Color(0xFFF5F6FA);
  static Color themeBackgroundPagesInvert = Color(0xFF5451fb);
  static Color colorTextContent = Color(0xFF3A4156);
  static Color colorShadown = Color.fromRGBO(178, 192, 213, 0.6);
  static Color colorOpacity = Color.fromRGBO(58, 65, 86, 0.1);

  static const Color bgScaffold = Color(0xffffffff);

  static Map<int, Color> colorCodes = {
    50: Color.fromRGBO(0, 255, 221, .1),
    100: Color.fromRGBO(0, 255, 221, .2),
    200: Color.fromRGBO(0, 255, 221, .3),
    300: Color.fromRGBO(0, 255, 221, .4),
    400: Color.fromRGBO(0, 255, 221, .5),
    500: Color.fromRGBO(0, 255, 221, .6),
    600: Color.fromRGBO(0, 255, 221, .7),
    700: Color.fromRGBO(0, 255, 221, .8),
    800: Color.fromRGBO(0, 255, 221, .9),
    900: Color.fromRGBO(0, 255, 221, 1),
  };
// Green color code: FF93cd48
  static MaterialColor themeColor = MaterialColor(0xFF5451FB, colorCodes);
}
