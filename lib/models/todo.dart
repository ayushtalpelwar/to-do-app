class ToDo{
  String? id;
  String? todotext;
  bool isDone;

  ToDo({
    required this.id,
    required this.todotext,
    this.isDone=false,
  });

  static List<ToDo> todolist(){
  return[
    ToDo(id: "1", todotext: "Exercise",isDone: true),
    ToDo(id: "2", todotext: "Check Emails",isDone: true),
    ToDo(id: "3", todotext: "Homework",),
    ToDo(id: "4", todotext: "Flutter",),
  ];
  }
}