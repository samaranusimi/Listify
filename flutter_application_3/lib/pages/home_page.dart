import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My app")),
      body: Material(
        child: Center(
          child: Container(child: Text("hello, ")),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
