import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:path/path.dart';
import 'package:sembast/sembast_io.dart';

class LocalDB {
  Database? _db;

  Future<Database> get database async {
    if (_db == null) {
      return await _openDatabase();
    }
    return _db!;
  }

  Future<Database> _openDatabase() async {
    var dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    var dbPath = join(dir.path, 'demo.db');
    final db = await databaseFactoryIo.openDatabase(dbPath);
    _db = db;
    return db;
  }
}
