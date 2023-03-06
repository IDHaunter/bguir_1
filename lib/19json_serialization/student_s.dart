// подключение библиотек для поддержки аннотаций
import 'package:json_annotation/json_annotation.dart';

// указываем куда будет записываться код сериализации/десериализации

part 'student_s.g.dart';

@JsonSerializable()
class StudentS {
  String name = '';
  int age = 1;
  int course = 1;
  bool single = false;
  @JsonKey(name: 'description')
  List<String> descriptionList = [];

  StudentS(
       this.name,
       this.age,
       this.course,
       this.single,
       List<String>? descriptionList);

  StudentS.withOutDescription( {required this.name,
    required this.age,
    required this.course,
    required this.single});

  factory StudentS.fromJson(Map<String, dynamic> json) => _$StudentSFromJson(json);

  void addDescription(String description) {
    descriptionList.add(description);
  }

  void addAllDescription(List<String> descriptions) {
    descriptionList.addAll(descriptions);
  }

  @override
  String toString() {
    return 'StudentS{имя: $name, возраст: $age, курс: $course, холост: $single, описание: $descriptionList}';
  }

  Map<String, dynamic> toJson() => _$StudentSToJson(this);

}

