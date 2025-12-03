import 'package:flutter/material.dart';
import 'package:timesync/views/screens/world_clock/world_clock_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TimeSync',
      home: WorldClockScreen(),
    );
  }
}