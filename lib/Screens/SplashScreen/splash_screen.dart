import 'package:clean_sevice/Screens/AuthScreens/LoginScreen/login_screen.dart';
import 'package:clean_sevice/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String splashScreenRoute = '/SplashScreen';
  void navigateToLogin(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((_) => context.go(LoginScreen.loginScreenRoute));
  }

  @override
  Widget build(BuildContext context) {
    navigateToLogin(context);
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(Assets.images.splash.path))),
        child: Center(
          child: Assets.images.logo
              .image(width: 250.w, height: 250.h, fit: BoxFit.fill),
        ),
      ),
    );
  }
}
