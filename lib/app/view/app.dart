import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sparkify/cores/internet/internet_cubit.dart';
import 'package:sparkify/cores/routes/naviagtion_routes.dart';
import 'package:sparkify/cores/themes/app_theme.dart';
import 'package:sparkify/cores/themes/cubit/app_theme_cubit.dart';
import 'package:sparkify/features/splash/view/splash_page.dart';
import 'package:sparkify/l10n/l10n.dart';

class App extends StatefulWidget {
  const App({
    required this.isLoggedIn,
    super.key,
  });

  final bool isLoggedIn;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit()..startMonitoringInternet(),
        ),
        BlocProvider<AppThemeCubit>(
          create: (context) => AppThemeCubit()..fetchTheme(),
        ),
      ],
      child: BlocBuilder<AppThemeCubit, AppThemeState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.themeIndex == 0
                ? AppTheme.lightThemMode
                : AppTheme.darkThemeMode,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            onGenerateRoute: NavigationRoutes.onGenerateRoute,
            home: SplashPage(
              isLoggedIn: widget.isLoggedIn,
            ),
          );
        },
      ),
    );
  }
}
