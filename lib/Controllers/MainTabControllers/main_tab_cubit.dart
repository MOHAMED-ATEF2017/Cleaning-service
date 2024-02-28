import 'package:clean_sevice/Screens/HomeScreen/home_screen.dart';
import 'package:clean_sevice/Screens/ProfileScreen/profile_screen.dart';
import 'package:clean_sevice/Screens/SettingsScreen/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_tab_state.dart';

class MainTabCubit extends Cubit<MainTabState> {
  MainTabCubit() : super(MainTabState());
  int selectedIndex = 0;

  void changeSelectedIndex(int index) {
    selectedIndex = index;
    emit(MainTabStateSuccess());
  }

  List<Widget> bodies = [
    HomeScreen(),
    SettingScreen(),
    ProfileScreen(),
  ];
}
