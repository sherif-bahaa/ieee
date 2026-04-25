import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return  Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
          margin: const EdgeInsets.all(8.0),
          child:  ListTile(title: Text('Item${index + 1}')),
        );
      }),
    );
  }
}
