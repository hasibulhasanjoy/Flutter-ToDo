import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorLightBlue,
        title: const Center(
          child: Text(
            'Todo',
          ),
        ),
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
