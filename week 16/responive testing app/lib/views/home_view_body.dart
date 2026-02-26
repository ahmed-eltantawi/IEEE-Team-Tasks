import 'package:flutter/material.dart';
import 'package:responsive_app/layout/adaptive_layout.dart';
import 'package:responsive_app/layout/home_view_layouts.dart/desktop_layout.dart';
import 'package:responsive_app/layout/home_view_layouts.dart/mobile_layout.dart';
import 'package:responsive_app/layout/home_view_layouts.dart/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        diskTopLayout: (context) => DiskTopLayout(),
      ),
    );
  }
}
