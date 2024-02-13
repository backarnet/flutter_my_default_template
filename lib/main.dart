import 'package:flutter/material.dart';

import 'pages/home_page.dart';
// flutter create --platforms=web,android,ios,linux,windows,macos .

const Color _themeColor = Colors.blue;
const ThemeMode _themeMode = ThemeMode.system;
const String appTitle = 'My App';
late ColorScheme themeColor;
late TextTheme themeText;

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(_themeColor),
      themeMode: _themeMode,
      home: const HomePage(),
    );
  }
}

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
