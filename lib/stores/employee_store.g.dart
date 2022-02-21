// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmployeesStore on _EmployeesStore, Store {
  final _$isLoadingAtom = Atom(name: '_EmployeesStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$membersAtom = Atom(name: '_EmployeesStore.members');

  @override
  List<Member> get members {
    _$membersAtom.reportRead();
    return super.members;
  }

  @override
  set members(List<Member> value) {
    _$membersAtom.reportWrite(value, super.members, () {
      super.members = value;
    });
  }

  final _$getAllAsyncAction = AsyncAction('_EmployeesStore.getAll');

  @override
  Future<dynamic> getAll() {
    return _$getAllAsyncAction.run(() => super.getAll());
  }

  final _$addMemberAsyncAction = AsyncAction('_EmployeesStore.addMember');

  @override
  Future<dynamic> addMember({required Member member}) {
    return _$addMemberAsyncAction.run(() => super.addMember(member: member));
  }

  final _$deleteAsyncAction = AsyncAction('_EmployeesStore.delete');

  @override
  Future<bool> delete(Member member) {
    return _$deleteAsyncAction.run(() => super.delete(member));
  }

  final _$_EmployeesStoreActionController =
      ActionController(name: '_EmployeesStore');

  @override
  Future<dynamic> editMember({required Member member}) {
    final _$actionInfo = _$_EmployeesStoreActionController.startAction(
        name: '_EmployeesStore.editMember');
    try {
      return super.editMember(member: member);
    } finally {
      _$_EmployeesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
members: ${members}
    ''';
  }
}
