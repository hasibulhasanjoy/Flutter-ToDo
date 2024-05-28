import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/widgets/todo_items.dart';

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
      body: Expanded(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 50,
                bottom: 20,
              ),
              child: const Column(
                children: [
                  Text(
                    'Tasks',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ToDoItem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
