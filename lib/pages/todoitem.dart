import 'package:flutter/material.dart';
import '../models/todo.dart';
import 'app_colors.dart' as AppColours;

class ToDoItem extends StatelessWidget {
  ToDoItem({Key? key,  required this.todo, this.onToDoChanged, this.onDeleteItem, }) : super(key: key);
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone?Icons.check_box:Icons.check_box_outline_blank,
          color: AppColours.tdBlue,
        ),
        title: Text(
          todo.todotext!,
          style: TextStyle(
            color: AppColours.tdBlack,
            fontSize: 16,
            decoration:todo.isDone? TextDecoration.lineThrough:null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: AppColours.tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          width: 35,
          height: 35,
          child: IconButton(
              onPressed: () {
                onDeleteItem(todo.id);
              },
            iconSize: 18,
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              ),
          ),
        ),
      ),
    );
  }
}
