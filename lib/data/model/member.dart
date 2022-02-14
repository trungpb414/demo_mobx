import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.g.dart';
part 'member.freezed.dart';
@freezed
class Member with _$Member {
  factory Member({int? id, String? name, int? yob, double? salary}) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
