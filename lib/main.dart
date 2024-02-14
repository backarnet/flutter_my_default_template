import 'package:flutter/material.dart';

import 'functions.dart';
import 'pages/home_page.dart';
// flutter create --platforms=web,android,ios,linux,windows,macos .

const Color _themeColor = Colors.blue;
const ThemeMode _themeMode = ThemeMode.system;

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
