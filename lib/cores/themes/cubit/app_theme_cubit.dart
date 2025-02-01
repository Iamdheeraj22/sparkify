import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sparkify/cores/storage/local_storage_data.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(AppThemeState());

  Future<void> updateTheme(int themeIndex) async {
    await LocalStorageData().saveAppThemeMode(themeMode: themeIndex);
    emit(AppThemeState(themeIndex: themeIndex));
  }

  Future<void> fetchTheme() async {
    final themeIndex = await LocalStorageData().appThemeMode() as int;
    emit(AppThemeState(themeIndex: themeIndex));
  }
}
