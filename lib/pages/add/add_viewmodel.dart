import 'package:demo_mobx/data/model/member.dart';
import 'package:demo_mobx/stores/employee_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'add_viewmodel.g.dart';

class AddMemberViewModel = _AddMemberViewModelBase with _$AddMemberViewModel;

abstract class _AddMemberViewModelBase with Store {
  final _employeesStore = EmployeesStore();

  @action
  Future addMember(Member member) async {
    await _employeesStore.addMember(member: member);
  }
}
