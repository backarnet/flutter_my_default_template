import 'package:flutter/material.dart';

const String appTitle = 'My App';
late ColorScheme themeColor;
late TextTheme themeText;

ThemeData themeData(Color color, [bool dark = false]) {
  return ThemeData(
    colorSchemeSeed: color,
    brightness: dark ? Brightness.dark : Brightness.light,
    useMaterial3: true,
  );
}

AppBar appBar(String appTitle, [Widget? leading, List<Widget>? actions]) {
  return AppBar(
    leading: leading,
    title: Text(appTitle),
    actions: actions,
    elevation: 2,
    shadowColor: Colors.black,
    backgroundColor: themeColor.inversePrimary,
  );
}

Text textBox(String text, {Color? color, double? size, bool bold = false}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    ),
  );
}
