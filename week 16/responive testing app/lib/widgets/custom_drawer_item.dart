import 'package:flutter/material.dart';
import 'package:responsive_app/Models/drawer_item.dart';
import 'package:responsive_app/widgets/drawer_view_item.dart';

class CustomDrawerItemListView extends StatelessWidget {
  const CustomDrawerItemListView({super.key, required this.drawerItems});

  final List<ItemModel> drawerItems;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drawerItems.length,
      itemBuilder: (BuildContext context, int index) {
        return DrawerItem(itemModel: drawerItems[index]);
      },
    );
  }
}
