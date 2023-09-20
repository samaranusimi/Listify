import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalog.dart';

class home_details_page extends StatelessWidget {
  final Item catalog;
  const home_details_page({
    Key? key,
    required this.catalog,
  })  : assert(catalog != Null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network(catalog.image),
            catalog.name.text.xl6.extraBold.make().py4(),
            catalog.desc.text.xl3.semiBold.make().py12(),
            "\$${catalog.price}".text.bold.xl4.make()
          ],
        ),
      ),
    );
  }
}
