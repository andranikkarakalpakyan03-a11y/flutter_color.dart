
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  @override
  State<TaskPage> createState() {
    return _TaskPageState();
  }
}

class _TaskPageState extends State<TaskPage> {

  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];

  int index = 0;

  void changeColor() {
    setState(() {
      index++;

      if (index == colors.length) {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Փոխվող գույն'),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: GestureDetector(
          onTap: changeColor,
          child: Container(
            width: 150,
            height: 150,
            color: colors[index],
          ),
        ),
      ),
    );
  }
}
