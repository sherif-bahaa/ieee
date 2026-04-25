import 'package:flutter/material.dart';
import 'package:resapp/widgets/custom_sliver_grid.dart';
import 'package:resapp/widgets/custom_sliver_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomSliverGrid(),
        const CustomSliverList(),
      ],
    );
  }
}