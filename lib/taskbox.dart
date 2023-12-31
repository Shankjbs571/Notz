import 'package:flutter/material.dart';
import 'Utils/mybutton.dart';

class TaskBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  TaskBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 200,
        width: 500,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Add a new Task"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save
              Mybutton(text: "Save", onpressed: onSave),
              //
              const SizedBox(width: 8),
              //cancel
              Mybutton(text: "Cancel", onpressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
