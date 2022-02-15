import 'package:demo_mobx/data/model/member.dart';
import 'package:demo_mobx/stores/employee_store.dart';
import 'package:mobx/mobx.dart';

part 'edit_viewmodel.g.dart';

class EditMemberViewModel = _EditMemberViewModelBase with _$EditMemberViewModel;

abstract class _EditMemberViewModelBase with Store {
  final _employeesStore = EmployeesStore();

  @action
  Future editMember(Member member) async {
    await _employeesStore.editMember(member: member);
  }

  @action
  Future deleteMember(Member member) async {
    await _employeesStore.delete(member);
  }
}
