// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

import 'ToDoTile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepagestate();
}

class _Homepagestate extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 240, 107),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 80, 77, 51),
          title: Text('T O  D O'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: ListView(
            children: [
              ToDoTile(),
            ],
          ),
        ));
  }
}
