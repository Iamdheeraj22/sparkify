import 'package:flutter/material.dart';
import 'package:sparkify/app/app.dart';
import 'package:sparkify/bootstrap.dart';
import 'package:sparkify/cores/storage/local_storage.dart';
import 'package:sparkify/cores/storage/local_storage_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage().initDeploymentLocalStorageDependencies();
  final isLoggedIn = LocalStorageData().isUserLoggedIn() as bool;
  await bootstrap(() => App(
        isLoggedIn: isLoggedIn,
      ));
}
