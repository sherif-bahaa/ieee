import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 20,
      itemBuilder: ((context, index) {
        return CustomeContainerList(index: index);
      }),
    );
  }
}

class CustomeContainerList extends StatelessWidget {
  final int index;

  const CustomeContainerList({required this.index, super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      margin: const EdgeInsets.all(8.0),
      child: ListTile(title: Text('Item${index + 1}')),
    );
  }
}
