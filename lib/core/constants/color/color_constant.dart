import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#f8f8f8');

  static Color red600 = fromHex('#d83c4a');

  static Color gray80001 = fromHex('#4c4c4c');

  static Color black90001 = fromHex('#021212');

  static Color greenA700 = fromHex('#019e45');

  static Color yellow800 = fromHex('#db9e11');

  static Color gray6006c = fromHex('#6c707070');

  static Color pink700Primary = fromHex('#bc4155');

  static Color gray20001 = fromHex('#e9e9e9');

  static Color blueGray700 = fromHex('#465481');

  static Color blueGray90001 = fromHex('#1a1c3d');

  static Color gray50026 = fromHex('#26aaa9a9');

  static Color blueGray900 = fromHex('#222741');

  static Color gray600 = fromHex('#707070');

  static Color gray400 = fromHex('#c5c5c5');

  static Color blueGray300 = fromHex('#969aa8');

  static Color gray800 = fromHex('#3c3c3c');

  static Color pink70033 = fromHex('#33bc4155');

  static Color gray200 = fromHex('#efefef');

  static Color bluegray400 = fromHex('#888888');

  static Color blueA20033 = fromHex('#334885ed');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black9001a = fromHex('#1a000000');

  static Color gray50 = fromHex('#f7f9ff');

  static Color black9001f = fromHex('#1f000000');

  static Color blueGray20001 = fromHex('#acaebe');

  static Color black900 = fromHex('#000000');

  static Color black90063 = fromHex('#63000000');

  static Color black90029 = fromHex('#29000000');

  static Color blueGray800 = fromHex('#2c3c4d');

  static Color gray90002 = fromHex('#212121');

  static Color gray700 = fromHex('#676870');

  static Color gray60087 = fromHex('#87707070');

  static Color blueGray200 = fromHex('#b9bac8');

  static Color gray60001 = fromHex('#74797d');

  static Color blueGray400 = fromHex('#79869f');

  static Color gray90087 = fromHex('#87161616');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color gray900 = fromHex('#161616');

  static Color gray90001 = fromHex('#231d25');

  static Color green9001a = fromHex('#1a184b18');

  static Color blueGray9007e = fromHex('#7e2f2e41');

  static Color gray300 = fromHex('#e2e2e2');

  static Color gray30002 = fromHex('#e0e0e0');

  static Color gray30001 = fromHex('#e4e4e4');

  static Color gray100 = fromHex('#f5f5f5');

  static Color whiteA70087 = fromHex('#87ffffff');
  static Color indigo = fromHex('#2D316E');

  static Color indigo900 = fromHex('#0a1f5e'); //Gradient Color for appbar
  static Color blueGray600 = fromHex('#485682');
  static Color tmblackeshWhite = const Color(0xFFE8E8E8);
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static Gradient? gradientColor = LinearGradient(
    colors: [ColorConstant.indigo900, const Color.fromARGB(255, 57, 72, 162)],
    begin: const FractionalOffset(0.0, 0.0),
    end: const FractionalOffset(1.0, 1.5),
    stops: const [0.0, 2.5],
    tileMode: TileMode.decal,
  );
}
