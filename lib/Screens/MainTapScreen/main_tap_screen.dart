import 'package:clean_sevice/Shared/Components/text_style.dart';
import 'package:clean_sevice/Shared/Constants/app_color.dart';
import 'package:clean_sevice/Shared/Constants/app_strings.dart';
import 'package:clean_sevice/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart';

import '../../Controllers/MainTabControllers/main_tab_cubit.dart';

class MainTapScreen extends StatefulWidget {
  const MainTapScreen({super.key, this.initialIndex});
  static const String mainTapScreenRoute = '/MainTapScreen';
  final int? initialIndex;

  @override
  State<MainTapScreen> createState() => _MainTapScreenState();
}

class _MainTapScreenState extends State<MainTapScreen> {
  final MainTabCubit mainTabCubit = KiwiContainer().resolve<MainTabCubit>();

  @override
  void initState() {
    super.initState();
    debugPrint(widget.initialIndex.toString());
    if (widget.initialIndex != null) {
      mainTabCubit.changeSelectedIndex(widget.initialIndex!);
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: mainTabCubit,
      builder: (context, state) {
        return Scaffold(
          body: mainTabCubit.bodies[mainTabCubit.selectedIndex],
          bottomNavigationBar: Container(
            width: 1.sw,
            height: 64.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(10.r),
                  topEnd: Radius.circular(10.r),
                ),
                border: Border.all(color: AppColors.ff017FB0MainColor)),
            child: BottomNavigationBar(
              selectedItemColor: AppColors.ff017FB0MainColor,
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: mainTabCubit.selectedIndex,
              selectedLabelStyle: textStyle(
                size: 10,
                color: AppColors.ff017FB0MainColor,
              ),
              unselectedLabelStyle: textStyle(
                size: 10,
                color: AppColors.ff796870,
              ),
              items: [
                BottomNavigationBarItem(
                    icon: Assets.icons.home.svg(
                        width: 24.w,
                        height: 24.h,
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            mainTabCubit.selectedIndex == 0
                                ? AppColors.ff017FB0MainColor
                                : AppColors.ff796870,
                            BlendMode.srcATop)),
                    label: AppStrings.main),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings,
                        color: mainTabCubit.selectedIndex == 1
                            ? AppColors.ff017FB0MainColor
                            : AppColors.ff796870),
                    label: AppStrings.setting),
                BottomNavigationBarItem(
                  icon: Assets.icons.user.svg(
                      width: 24.w,
                      height: 24.h,
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          mainTabCubit.selectedIndex == 2
                              ? AppColors.ff017FB0MainColor
                              : AppColors.ff796870,
                          BlendMode.srcATop)),
                  label: AppStrings.profile,
                ),
              ],
              onTap: (value) {
                mainTabCubit.changeSelectedIndex(value);
              },
            ),
          ),
        );
      },
    );
  }
}
