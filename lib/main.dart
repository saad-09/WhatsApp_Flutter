import 'package:chatscreen/pages/HomePage.dart';
import 'package:flutter/material.dart';

import 'pages/ChatPage.dart';
import 'pages/Settingspage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xFF075E55),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) => HomePage(),
        "settingsPage": (context) => SettingsPage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}
