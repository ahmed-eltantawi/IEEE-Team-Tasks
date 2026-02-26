import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_sliverList.dart';
import 'package:responsive_app/widgets/custom_sliver_grid.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(child: CustomSliverGrid()),
        CustomSliverList(),
      ],
    );
  }
}
