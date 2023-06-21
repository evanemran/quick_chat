import 'dart:ui';

class ColorManager
{
  static Color primary = HexColor.fromHex("#a2ce12");
  static Color white = HexColor.fromHex("#F7F6F0");
  static Color light = HexColor.fromHex("#FFFFFF");

}
extension HexColor on Color{
  static Color fromHex(String colorString)
  {
    colorString=colorString.replaceAll("#","");
    if(colorString.length==6)
    {
      colorString = "FF$colorString";
    }
    return Color(int.parse(colorString,radix: 16));
  }
}