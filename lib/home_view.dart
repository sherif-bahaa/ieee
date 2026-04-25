import 'package:flutter/material.dart';
import 'package:resapp/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDBDBDB),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.menu, color: Colors.white),
        title: const Text('Home View', style: TextStyle(color: Colors.white)),
      ),
      body:const    HomeViewBody(),
    );
  }
}
