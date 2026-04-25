import 'dart:developer';

import 'package:flutter/material.dart';

class Lay extends StatelessWidget {
  const Lay({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log(constraints.maxWidth.toString());
        if (constraints.maxWidth <= 600) {
          return MobileLayout();
        } else {
          return DesktopLayout();
        }
      },
    );
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

int count = 0;

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  count = index + 1;
                  setState(() {});
                },
                child: Container(
                  margin: const EdgeInsets.all(8.0),
                  color: Colors.green,
                  child: ListTile(title: Text('Item ${index + 1}')),
                ),
              );
            },
          ),
        ),

        Expanded(
          child: SizedBox(child: Center(child: Text('count: $count'))),
        ),
      ],
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LayDetails(title: 'Item ${index + 1}'),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(8.0),
            color: Colors.green,
            child: ListTile(title: Text('Item ${index + 1}')),
          ),
        );
      },
    );
  }
}

class LayDetails extends StatelessWidget {
  const LayDetails({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Center(child: ListTile(title: Text('$title '))),
    );
  }
}
