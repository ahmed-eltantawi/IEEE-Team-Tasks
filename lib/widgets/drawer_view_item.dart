import 'package:flutter/material.dart';
import 'package:responsive_app/Models/drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(itemModel.title, style: TextStyle(letterSpacing: 5)),
      ),
      leading: Icon(itemModel.icon),
    );
  }
}
