import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/theme.dart';
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
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.xl2.bold.make(),
            ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).brightness == Brightness.dark
                                ? MyTheme.lightdarkBluish
                                : MyTheme.darkBluish),
                        shape: MaterialStatePropertyAll(StadiumBorder())),
                    onPressed: () {},
                    child: "Add to Cart".text.xl2.make())
                .wh(150, 50)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 20,
                edge: VxEdge.top,
                arcType: VxArcType.convey,
                child: Container(
                  color: context.cardColor,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl3
                          .color(MyTheme.darkBluish)
                          .make(),
                      20.heightBox,
                      catalog.desc.text.semiBold
                          .textStyle(context.captionStyle)
                          .xl2
                          .make(),
                      10.heightBox,
                      "With then or the doubting with of, scarce to before fluttered in. Spoken croaking but heart this on nevermore press"
                          .text
                          .lg
                          .make()
                          .p32(),
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

           
// ButtonBar(
//               alignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 "\$${catalog.price}".text.bold.xl4.make(),
//                 ElevatedButton(
//                         onPressed: () {},
//                         style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(MyTheme.darkBluish),
//                           shape: MaterialStateProperty.all(StadiumBorder()),
//                         ),
//                         child: "Buy".text.bold.make())
//                     .wh(100, 60)
//               ],
//             ).p32(),