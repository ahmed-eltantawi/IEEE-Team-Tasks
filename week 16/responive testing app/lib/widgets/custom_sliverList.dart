import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_item2.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CustomItem2(),
        );
      }, childCount: 20),
    );
  }
}
