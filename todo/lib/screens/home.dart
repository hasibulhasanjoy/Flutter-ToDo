import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/models/todo.dart';
import 'package:todo/widgets/todo_items.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = ToDo.todoList();
  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

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
              child: Column(
                children: [
                  const Text(
                    'Tasks',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  for (ToDo todo in todoList) ToDoItem(todo, _handleToDoChange),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
