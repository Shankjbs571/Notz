import 'package:flutter/material.dart';
import 'Utils/mybutton.dart';

class TaskBox extends StatelessWidget {
  const TaskBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 200,
        width: 500,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Add a new Task"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save
              Mybutton(text: "Save", onpressed: () {}),
              //
              const SizedBox(width: 8),
              //cancel
              Mybutton(text: "Cancel", onpressed: () {}),
            ],
          )
        ]),
      ),
    );
  }
}
