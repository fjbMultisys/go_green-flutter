import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_list.dart';
import 'package:todoey_flutter/widgets/tast_tile.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      backgroundColor: Colors.lime,
      floatingActionButton: FloatingActionButton(
          onPressed: (){
          },
          backgroundColor: Colors.lime[500],
          child: Icon(Icons.add_task)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.0),
          Container(
            padding: EdgeInsets.only(
                top: 60.0,
                left: 30.0,
                right: 30.0,
                bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(child: Icon(Icons.energy_savings_leaf,
                  size: 50.0,
                  color: Colors.green,),
                    backgroundColor: Colors.white,
                    radius: 30.0),
                SizedBox(height: 10.0),
                Text('GoGreen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(child:
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                )
            ),
            child: TaskList(),
          ),
          ),
        ],
      )
      );
  }
}
