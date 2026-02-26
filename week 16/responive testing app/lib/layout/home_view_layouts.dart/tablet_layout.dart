import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_list_view.dart';
import 'package:responsive_app/widgets/custom_sliverList.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(child: CustomListView()),
        CustomSliverList(),
      ],
    );
  }
}
