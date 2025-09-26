import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class GlobalColors {
  static HexColor mainColor = HexColor('#FF0000');
  static HexColor bgColor = HexColor('#141417');
  static HexColor white = HexColor('#FFFFFF');
  static HexColor dark = HexColor('#000000');
  static HexColor bgHome = HexColor('#28282B');
  static HexColor lightGey = HexColor('#303030');
  static HexColor inactiveColor = HexColor('#808080');

  static LinearGradient mainGradient = LinearGradient(
    colors: [
      HexColor('#F26464'),
      HexColor('#7D214F'),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient secGradient = LinearGradient(
    colors: [
      HexColor('#3195D8'),
      HexColor('#2E498A'),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );


  static LinearGradient thirGradient = LinearGradient(
    colors: [
      HexColor('#39AB87'),
      HexColor('#236751'),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );


}