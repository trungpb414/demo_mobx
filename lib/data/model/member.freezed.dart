// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
class _$MemberTearOff {
  const _$MemberTearOff();

  _Member call({int? id, String? name, int? yob, double? salary}) {
    return _Member(
      id: id,
      name: name,
      yob: yob,
      salary: salary,
    );
  }

  Member fromJson(Map<String, Object?> json) {
    return Member.fromJson(json);
  }
}

/// @nodoc
const $Member = _$MemberTearOff();

/// @nodoc
mixin _$Member {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get yob => throw _privateConstructorUsedError;
  double? get salary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res>;
  $Res call({int? id, String? name, int? yob, double? salary});
}

/// @nodoc
class _$MemberCopyWithImpl<$Res> implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  final Member _value;
  // ignore: unused_field
  final $Res Function(Member) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? yob = freezed,
    Object? salary = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      yob: yob == freezed
          ? _value.yob
          : yob // ignore: cast_nullable_to_non_nullable
              as int?,
      salary: salary == freezed
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$MemberCopyWith(_Member value, $Res Function(_Member) then) =
      __$MemberCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, int? yob, double? salary});
}

/// @nodoc
class __$MemberCopyWithImpl<$Res> extends _$MemberCopyWithImpl<$Res>
    implements _$MemberCopyWith<$Res> {
  __$MemberCopyWithImpl(_Member _value, $Res Function(_Member) _then)
      : super(_value, (v) => _then(v as _Member));

  @override
  _Member get _value => super._value as _Member;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? yob = freezed,
    Object? salary = freezed,
  }) {
    return _then(_Member(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      yob: yob == freezed
          ? _value.yob
          : yob // ignore: cast_nullable_to_non_nullable
              as int?,
      salary: salary == freezed
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Member implements _Member {
  _$_Member({this.id, this.name, this.yob, this.salary});

  factory _$_Member.fromJson(Map<String, dynamic> json) =>
      _$$_MemberFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final int? yob;
  @override
  final double? salary;

  @override
  String toString() {
    return 'Member(id: $id, name: $name, yob: $yob, salary: $salary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Member &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.yob, yob) &&
            const DeepCollectionEquality().equals(other.salary, salary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(yob),
      const DeepCollectionEquality().hash(salary));

  @JsonKey(ignore: true)
  @override
  _$MemberCopyWith<_Member> get copyWith =>
      __$MemberCopyWithImpl<_Member>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberToJson(this);
  }
}

abstract class _Member implements Member {
  factory _Member({int? id, String? name, int? yob, double? salary}) =
      _$_Member;

  factory _Member.fromJson(Map<String, dynamic> json) = _$_Member.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  int? get yob;
  @override
  double? get salary;
  @override
  @JsonKey(ignore: true)
  _$MemberCopyWith<_Member> get copyWith => throw _privateConstructorUsedError;
}
