import 'package:flutter/material.dart';
import 'package:responsive_app/widgets/custom_item.dart';
import 'package:responsive_app/widgets/custom_item2.dart';

class TheDiskTopRightWidget extends StatelessWidget {
  const TheDiskTopRightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Expanded(flex: 3, child: CustomItem()),
        SizedBox(height: 15),
        Expanded(flex: 1, child: CustomItem2()),
        SizedBox(height: 20),
      ],
    );
  }
}
