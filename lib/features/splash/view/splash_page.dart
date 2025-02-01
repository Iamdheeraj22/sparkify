import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sparkify/cores/internet/internet_cubit.dart';
import 'package:sparkify/cores/storage/local_storage_data.dart';
import 'package:sparkify/features/authentication/view/pages/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    required this.isLoggedIn,
    super.key,
  });

  final bool isLoggedIn;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      if (!widget.isLoggedIn && mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          LoginPage.route,
          (_) => false,
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset('assets/images/splash_screen_logo.svg'),
      ),
    );
  }
}
