// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'dart:js_util';

import 'package:flutter/material.dart';

import 'ToDoTile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepagestate();
}

class _Homepagestate extends State<Homepage> {
  List notzlist = [
    ["task1", true],
    ["task2", false]
  ];

  void checkboxchanged(bool? value, int index) {
    setState(() {
      notzlist[index][1] = !notzlist[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 208, 208, 208),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text('Notz'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: ListView.builder(
            itemCount: notzlist.length,
            itemBuilder: (context, index) {
              return ToDoTile(
                taskName: notzlist[index][0],
                taskCompleted: notzlist[index][1],
                onChanged: (value) => checkboxchanged(value, index),
              );
            },
          )),
    );
  }
}
