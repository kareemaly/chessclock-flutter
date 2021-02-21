import 'package:flutter/material.dart';

import 'screens/chess_clock_screen/chess_clock_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChessClockScreen(),
    );
  }
}
