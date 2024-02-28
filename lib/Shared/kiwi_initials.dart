import 'package:kiwi/kiwi.dart';

import '../Controllers/HomeControllers/home_cubit.dart';
import '../Controllers/MainTabControllers/main_tab_cubit.dart';
 
 void initKiwi() {
  KiwiContainer container = KiwiContainer();

  container.registerFactory((c) => MainTabCubit());
  container.registerFactory((c) => HomeCubit());
  // container.registerFactory((c) => LoginBloc());
}
