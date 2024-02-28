import 'package:clean_sevice/Screens/AuthScreens/LoginScreen/login_screen.dart';
import 'package:clean_sevice/Screens/MainTapScreen/main_tap_screen.dart';
import 'package:clean_sevice/Shared/Components/container_button.dart';
import 'package:clean_sevice/Shared/Constants/app_color.dart';
import 'package:clean_sevice/Shared/Constants/app_strings.dart';
import 'package:clean_sevice/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  static const String signUpScreenRoute = '/SignUpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            34.verticalSpace,
            Row(
              children: [
                Spacer(),
                Assets.images.logo.image(
                  width: 98.w,
                  height: 98.h,
                ),
                Spacer(),
                IconButton(
                    onPressed: () => context.go(LoginScreen.loginScreenRoute),
                    icon: Icon(
                      Icons.arrow_forward,
                      color: AppColors.ff017FB0MainColor,
                    ))
              ],
            ),
            40.verticalSpace,
            CustomTextFeild(
              title: AppStrings.name,
              suffixIcon: Assets.icons.user.svg(),
            ),
            16.verticalSpace,
            CustomTextFeild(
              title: AppStrings.email,
              suffixIcon: Assets.icons.email.svg(),
            ),
            16.verticalSpace,
            CustomTextFeild(
              title: AppStrings.phone,
              suffixIcon: Assets.icons.calling.svg(
                  color: AppColors.ff017FB0MainColor
                  // colorFilter: ColorFilter.mode(AppColors.ff017FB0MainColor, BlendMode.color)
                  ),
            ),
            16.verticalSpace,
            CustomTextFeild(
              title: AppStrings.password,
              isPassword: true,
            ),
            72.verticalSpace,
            CustomContainerButton(title: AppStrings.login,weight: FontWeight.w700,
            onPressed: () => context.go(MainTapScreen.mainTapScreenRoute),)
          ],
        ),
      ),
    );
  }
}
