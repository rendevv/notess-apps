class ToDo {
  String? id;
  String? todoText;
  bool isDone;
  String? date;

  ToDo({
    this.id,
    this.todoText,
    this.isDone = false,
    this.date,
  });

  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(
      id: json['id'],
      todoText: json['todoText'],
      isDone: json['isDone'],
      date: json['date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'todoText': todoText,
      'isDone': isDone,
      'date': date,
    };
  }
}
