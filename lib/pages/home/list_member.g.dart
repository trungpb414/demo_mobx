// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_member.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListMemberStore on _ListMemberStoreBase, Store {
  Computed<List<Member>>? _$membersComputed;

  @override
  List<Member> get members =>
      (_$membersComputed ??= Computed<List<Member>>(() => super.members,
              name: '_ListMemberStoreBase.members'))
          .value;
  Computed<double>? _$totalSalaryCountComputed;

  @override
  double get totalSalaryCount => (_$totalSalaryCountComputed ??=
          Computed<double>(() => super.totalSalaryCount,
              name: '_ListMemberStoreBase.totalSalaryCount'))
      .value;
  Computed<String>? _$oldestMemberComputed;

  @override
  String get oldestMember =>
      (_$oldestMemberComputed ??= Computed<String>(() => super.oldestMember,
              name: '_ListMemberStoreBase.oldestMember'))
          .value;

  final _$getAllEmployeeAsyncAction =
      AsyncAction('_ListMemberStoreBase.getAllEmployee');

  @override
  Future<dynamic> getAllEmployee() {
    return _$getAllEmployeeAsyncAction.run(() => super.getAllEmployee());
  }

  final _$_ListMemberStoreBaseActionController =
      ActionController(name: '_ListMemberStoreBase');

  @override
  int getAge(int yearBorn) {
    final _$actionInfo = _$_ListMemberStoreBaseActionController.startAction(
        name: '_ListMemberStoreBase.getAge');
    try {
      return super.getAge(yearBorn);
    } finally {
      _$_ListMemberStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
members: ${members},
totalSalaryCount: ${totalSalaryCount},
oldestMember: ${oldestMember}
    ''';
  }
}
