import 'package:flutter/cupertino.dart';

class ColorManager {
  static Color primary = HexaColor.fromHex("#ED9728");
  static Color darkGrey = HexaColor.fromHex("#525252");
  static Color grey = HexaColor.fromHex("#737477");
  static Color lightGrey = HexaColor.fromHex("#9E9E9E");
  static Color priimaryOpacity70 = HexaColor.fromHex("#B3ED9728");

  static Color darkPrimary = HexaColor.fromHex("#d17d11");
  static Color grey1 = HexaColor.fromHex("#707070");
  static Color grey2 = HexaColor.fromHex("#797979");
  static Color white = HexaColor.fromHex("#FFFFFF");
  static Color error = HexaColor.fromHex("#e61f34");
}

extension HexaColor on ColorManager {
  static Color fromHex(String hexaColorString) {
    hexaColorString = hexaColorString.replaceAll("#", "");
    if (hexaColorString.length == 6) {
      hexaColorString = "FF" + hexaColorString;
    }
    return Color(int.parse(hexaColorString, radix: 16));
  }
}
