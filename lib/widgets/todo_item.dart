import 'package:apptest/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:apptest/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final Todo todo;

  const ToDoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
          onTap: () {
            print('mark as done');
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.white,
          leading: Icon(Icons.check_box, color: tdBlue),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              color: Colors.white,
              iconSize: 20,
              icon: Icon(Icons.delete),
              onPressed: () {
                print('delete');
              },
            ),
          )),
    );
  }
}
