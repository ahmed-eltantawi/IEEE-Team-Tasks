import 'package:flutter/material.dart';
import 'package:responsive_app/Models/drawer_item.dart';
import 'package:responsive_app/widgets/custom_drawer_item.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});
  final List<ItemModel> drawerItems = const [
    ItemModel(title: "DASHBOARD", icon: Icons.home),
    ItemModel(title: "SETTINGS", icon: Icons.settings),
    ItemModel(title: "ABOUT", icon: Icons.info),
    ItemModel(title: "LOGOUT", icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffdbdbdb),
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.monitor_heart, size: 70)),
          Expanded(child: CustomDrawerItemListView(drawerItems: drawerItems)),
        ],
      ),
    );
  }
}
