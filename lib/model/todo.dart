class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

   factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(
      id: json['id'] as String,
      todoText: json['todoText'] as String?,
      isDone: json['isDone'] as bool,
    );
  }

   Map<String, dynamic> toJson() {
    return {
      'id': id,
      'todoText': todoText,
      'isDone': isDone,
    };
  }
}