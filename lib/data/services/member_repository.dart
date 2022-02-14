import 'package:demo_mobx/data/db/local_db.dart';
import 'package:demo_mobx/data/model/member.dart';
import 'package:sembast/sembast.dart';

class MemberRepository {
  final _store = intMapStoreFactory.store('member');
  final _localDb = LocalDB();
  Future<Database> get _db async => await _localDb.database;

  Future<Member> insert(Member employee) async {
    final id = await _store.add(await _db, employee.toJson());
    return employee.copyWith(id: id);
  }

  Future<List<Member>> getAllEmployee() async {
    final recordSnapshots = await _store.find(
      await _db,
    );
    return recordSnapshots.map((snapshot) {
      return Member.fromJson(snapshot.value).copyWith(id: snapshot.key);
    }).toList();
  }

  Future<Member> update(Member employee) async {
    final finder = Finder(filter: Filter.byKey(employee.id));
    final id = await _store.update(
      await _db,
      employee.toJson(),
      finder: finder,
    );
    return employee.copyWith(id: id);
  }

  Future<int> delete(int id) async {
    final finder = Finder(filter: Filter.byKey(id));
    return await _store.delete(
      await _db,
      finder: finder,
    );
  }

  Future deleteAll() async {
    await _store.drop(
      await _db,
    );
  }
}
