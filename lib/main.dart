import 'package:flutter/material.dart';
import 'package:flutter_lab/profile.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
          child: DefaultTabController(
              length: 2,
              child: ProfileScreen(),
          ),
        )
    );
  }
}
