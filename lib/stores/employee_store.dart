import 'package:demo_mobx/data/model/member.dart';
import 'package:demo_mobx/data/services/member_repository.dart';
import 'package:mobx/mobx.dart';

part 'employee_store.g.dart';

class EmployeesStore = _EmployeesStore with _$EmployeesStore;

abstract class _EmployeesStore with Store {
  final _repository = MemberRepository();

  @observable
  bool isLoading = false;

  @observable
  List<Member> members = [];

  @action
  Future getAll() async {
    isLoading = true;
    try {
      members = await _repository.getAllEmployee();
    } catch (e) {
      print(e.toString());
    } finally {
      isLoading = false;
    }
    // _repository.getAllEmployee().then((result) {
    //   members = result;
    //   isLoading = false;
    // }).catchError((_) {
    //   isLoading = false;
    // });
  }

  @action
  Future addMember({required Member member}) async {
    return _repository.insert(member);
  }

  @action
  Future editMember({required Member member}) {
    return _repository.update(member);
  }

  @action
  Future<bool> delete(Member member) async {
    if (member.id == null) {
      return false;
    }
    await _repository.delete(member.id!);
    return true;
  }
}
