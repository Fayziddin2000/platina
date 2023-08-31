import 'dart:ui';

Color mainColor = const Color.fromRGBO(29, 48, 104, 1);
Color shadow = const Color.fromRGBO(29, 48, 104, 0.6);
Color bg = const Color.fromRGBO(248, 248, 255, 1);
Color dividers = const Color.fromRGBO(213, 221, 243, 1);
Color secondaryText = const Color.fromRGBO(169, 170, 188, 1);
Color blue3 = const Color.fromRGBO(115, 124, 152, 1);
Color link = const Color.fromRGBO(0, 102, 204, 1);
Color category = const Color.fromRGBO(255, 125, 37, 1);

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  toColorBG() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('1A');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
