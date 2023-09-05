import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/catalog.dart';
import 'package:flutter_application_3/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),     
          child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context , index){
              return ItemWidget(
                item: CatalogModel.items[index]
              );
            },
            
          ),
        ),
      drawer: MyDrawer(),
    );
  }
}
