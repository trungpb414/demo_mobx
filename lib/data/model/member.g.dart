// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      id: json['id'] as int?,
      name: json['name'] as String?,
      yob: json['yob'] as int?,
      salary: (json['salary'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'yob': instance.yob,
      'salary': instance.salary,
    };
