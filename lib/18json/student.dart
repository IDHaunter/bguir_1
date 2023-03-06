class Student {
  String name = '';
  int age = 1;
  int course = 1;
  bool single = false;

  List<String> descriptionList = [];

  Student(
      {required this.name,
      required this.age,
      required this.course,
      required this.single});

  Student.fromJson(Map<String, dynamic> json) : name = json['name'] {
    age = json['age'];
    course = json['course'];
    single = json['single'];
    descriptionList = List<String>.from(json['description']);
  }

  void addDescription(String description) {
    descriptionList.add(description);
  }

  void addAllDescription(List<String> descriptions) {
    descriptionList.addAll(descriptions);
  }

  @override
  String toString() {
    return 'Student{имя: $name, возраст: $age, курс: $course, холост: $single, описание: $descriptionList}';
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'name': name,
      'age': age,
      'course': course,
      'single': single,
      'description': descriptionList
    };
  }
}
