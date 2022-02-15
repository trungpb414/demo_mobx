import 'package:demo_mobx/data/model/member.dart';
import 'package:demo_mobx/stores/employee_store.dart';
import 'package:mobx/mobx.dart';

part 'list_member.g.dart';

class Listmember = _ListMember with _$Listmember;

abstract class _ListMember with Store {
  final _employeesStore = EmployeesStore();

  @computed
  List<Member> get members => _employeesStore.members;

  @action
  Future getAllEmployee() async {
    await _employeesStore.getAll();
  }

  @action
  int getAge(int yearBorn) => DateTime.now().year - yearBorn;

  @computed
  double get totalSalaryCount {
    double temp = 0;
    for (var element in members) {
      temp += element.salary ?? 0;
    }
    return temp;
  }

  @computed
  String get oldestMember {
    if (members.isEmpty) {
      return '';
    }
    int temp = members[0].yob ?? 0;
    String member = members[0].name!;
    for (var element in members) {
      if (temp > (element.yob ?? 0)) {
        temp = element.yob ?? 0;
        member = element.name ?? '';
      }
    }
    return member;
  }
}
