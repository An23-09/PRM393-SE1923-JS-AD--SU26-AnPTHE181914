import 'package:flutter/material.dart';

class ScaffoldThemeDemo extends StatefulWidget {
  const ScaffoldThemeDemo({super.key});

  @override
  State<ScaffoldThemeDemo> createState() =>
      _ScaffoldThemeDemoState();
}

class _ScaffoldThemeDemoState
    extends State<ScaffoldThemeDemo> {

  bool darkMode = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        brightness: Brightness.light,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      themeMode:
      darkMode ? ThemeMode.dark : ThemeMode.light,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Theme Demo"),
        ),

        floatingActionButton:
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),

        body: Center(
          child: SwitchListTile(
            title: const Text("Dark Mode"),
            value: darkMode,
            onChanged: (value) {
              setState(() {
                darkMode = value;
              });
            },
          ),
        ),
      ),
    );
  }
}