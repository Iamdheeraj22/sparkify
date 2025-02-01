import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sparkify/cores/storage/local_storage_data.dart';

class LocalStorage {
  factory LocalStorage() {
    return _instance;
  }

  LocalStorage._internal();

  //Singleton factory
  static final LocalStorage _instance = LocalStorage._internal();

  Future<void> initDevelopmentLocalStorageDependencies() async {
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    Hive.box(name: 'user_dev');
    await LocalStorageData().changeHiveBox();
  }

  Future<void> initStagingLocalStorageDependencies() async {
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    Hive.box(name: 'user_staging');
    await LocalStorageData()
        .changeHiveBox(hiveBoxName: LocalStorageData.stagingUserHiveBox);
  }

  Future<void> initDeploymentLocalStorageDependencies() async {
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    Hive.box(name: 'user_prod');
    await LocalStorageData()
        .changeHiveBox(hiveBoxName: LocalStorageData.prodUserHiveBox);
  }
}
