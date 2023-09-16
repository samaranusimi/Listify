import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_3/models/catalog.dart';
import 'package:flutter_application_3/widgets/drawer.dart';
import '../widgets/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';


class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      body: Column(),





    
    
    
    
      // appBar: AppBar(title: Text("Catalog App")),
      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
      //       ? GridView.builder(
      //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //               crossAxisCount: 2,
      //               crossAxisSpacing: 16,
      //               mainAxisSpacing: 16),
      //           itemBuilder: (context, index) {
      //             final item = CatalogModel.items[index];
      //             return Card(
      //                 clipBehavior: Clip.antiAlias,
      //                 shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.circular(10)),
      //                 child: GridTile(
      //                   header: Container(
      //                     child: Text(
      //                       item.name,
      //                       style: TextStyle(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                     padding: EdgeInsets.all(16),
      //                     decoration: BoxDecoration(color: Colors.green),
      //                   ),
      //                   child: Image.network(
      //                     item.image,
      //                     height: 10,
      //                     fit: BoxFit.contain,
      //                   ),
      //                   footer: Container(
      //                     child: Text(
      //                       item.price.toString(),
      //                       style: TextStyle(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                     padding: EdgeInsets.all(12),
      //                     decoration: BoxDecoration(color: Colors.indigo),
      //                   ),
      //                 ));
      //           },
      //           itemCount: CatalogModel.items.length,
      //         )

      //       // *? ListView.builder(
      //       //     itemCount: CatalogModel.items.length,
      //       //     itemBuilder: (context, index) =>
      //       //         ItemWidget(item: CatalogModel.items[index])
      //       //         )*
      //       : Center(
      //           child: CircularProgressIndicator(),
      //         ),
      // ),
      // drawer: MyDrawer(),
    );
  }
}
