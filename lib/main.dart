import 'package:clean_sevice/Shared/Constants/app_color.dart';
import 'package:clean_sevice/Shared/Router/router_configration.dart';
import 'package:clean_sevice/Shared/kiwi_initials.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  
  initKiwi();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        builder: (context, _) {
          return MaterialApp.router(
            title: 'Clean Service',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: AppColors.ff017FB0MainColor),
                useMaterial3: true,
                scaffoldBackgroundColor: Colors.white,
                appBarTheme: AppBarTheme(
                  centerTitle: true,
                )),
            routerConfig: AppRoutersConfigration.router,
            locale: const Locale('ar'),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: const [
              Locale('ar'), // Arabic
              Locale('en'), // English
            ],
          );
        });
  }
}
