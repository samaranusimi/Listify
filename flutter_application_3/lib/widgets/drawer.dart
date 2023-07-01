import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  accountName: Text("Samar"),
                  accountEmail: Text("sam123@gail.com")))
        ],
      ),
    );
  }
}
