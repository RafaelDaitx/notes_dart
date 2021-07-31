import 'package:notes_first/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.black87,
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Dashboard(),
    );
  }
}