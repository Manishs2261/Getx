import 'package:flutter/material.dart';

class HomeOneScreen extends StatefulWidget {
  const HomeOneScreen({super.key});

  @override
  State<HomeOneScreen> createState() => _HomeOneScreenState();
}

class _HomeOneScreenState extends State<HomeOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home One Page"),
      ),
    );
  }
}
