import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
          backgroundColor: Colors.transparent, title: "Cart".text.make()),
    );
  }
}
