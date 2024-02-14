import 'package:flutter/material.dart';

import '../functions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    themeColor = Theme.of(context).colorScheme;
    themeText = Theme.of(context).textTheme;
    return Scaffold(
      appBar: appBar(appTitle),
      body: Center(
          child:
              textBox(appTitle, color: themeColor.error, size: 36, bold: true)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
