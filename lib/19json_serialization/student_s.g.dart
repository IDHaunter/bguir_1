// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_s.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentS _$StudentSFromJson(Map<String, dynamic> json) {
  return StudentS(
    json['name'] as String,
    json['age'] as int,
    json['course'] as int,
    json['single'] as bool,
    (json['description'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$StudentSToJson(StudentS instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'course': instance.course,
      'single': instance.single,
      'description': instance.descriptionList,
    };
