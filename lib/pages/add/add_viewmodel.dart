import 'package:demo_mobx/data/model/member.dart';
import 'package:demo_mobx/stores/employee_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'add_viewmodel.g.dart';

class AddMemberViewModel = _AddMemberViewModelBase with _$AddMemberViewModel;

abstract class _AddMemberViewModelBase with Store {
  final _employeesStore = EmployeesStore();

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final salaryController = TextEditingController();

  void initController(Member member) {
    nameController.text = member.name ?? '';
    ageController.text = member.yob.toString();
    salaryController.text = member.salary.toString();
  }

  String? validator(String? value) {
    if (value?.isEmpty ?? true) {
      return 'Cannot be left blank';
    }
    return null;
  }

  void disposeController() {
    nameController.dispose();
    ageController.dispose();
    salaryController.dispose();
  }

  @action
  Future addMember() async {
    if (formKey.currentState!.validate()) {
      await _employeesStore.addMember(
          member: Member(
              name: nameController.text,
              yob: int.tryParse(ageController.text),
              salary: double.tryParse(salaryController.text)));
    }
  }
}
