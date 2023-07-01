import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/drawer.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Material(
        child: Center(
          child: Container(child: Text("Welcome to learn flutter")),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
