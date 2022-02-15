import 'package:demo_mobx/data/model/member.dart';
import 'package:demo_mobx/stores/employee_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'edit_viewmodel.g.dart';

class EditMemberViewModel = _EditMemberViewModelBase with _$EditMemberViewModel;

abstract class _EditMemberViewModelBase with Store {
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
  Future editMember(int? id) async {
    if (formKey.currentState!.validate()) {
      await _employeesStore.editMember(
          member: Member(
              id: id ?? 0,
              name: nameController.text,
              yob: int.tryParse(ageController.text),
              salary: double.tryParse(salaryController.text) ?? 0));

      
    }
  }

  @action
  Future deleteMember(Member member) async {
    await _employeesStore.delete(member);
  }
}
