import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class Cart_Page extends StatelessWidget {
  const Cart_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
          backgroundColor: Colors.transparent, title: "Cart".text.make()),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            "\$1111".text.xl4.color(context.theme.hintColor).make(),
            30.widthBox,
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).brightness == Brightness.dark
                                ? MyTheme.lightdarkBluish
                                : MyTheme.darkBluish)),
                    child: "Buy".text.white.make())
                .w16(context)
          ],
        ));
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
            onPressed: () {}, icon: Icon(Icons.remove_circle_outline)),
        title: "Item1".text.make(),
      ),
    );
  }
}
