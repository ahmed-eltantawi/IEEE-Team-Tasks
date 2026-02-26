import 'package:flutter/material.dart';
import 'package:responsive_app/layout/home_view_layouts.dart/tablet_layout.dart';
import 'package:responsive_app/views/drawer_view.dart';
import 'package:responsive_app/widgets/custom_disktop_widget.dart';

class DiskTopLayout extends StatelessWidget {
  const DiskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: DrawerView()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TabletLayout(),
          ),
        ),
        Expanded(flex: 1, child: TheDiskTopRightWidget()),
      ],
    );
  }
}
