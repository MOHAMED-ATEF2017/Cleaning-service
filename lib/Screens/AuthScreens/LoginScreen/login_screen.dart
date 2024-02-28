import 'package:clean_sevice/Screens/AuthScreens/SignUpScreen/sign_up_screen.dart';
import 'package:clean_sevice/Screens/MainTapScreen/main_tap_screen.dart';
import 'package:clean_sevice/Shared/Components/border.dart';
import 'package:clean_sevice/Shared/Components/container_button.dart';
import 'package:clean_sevice/Shared/Components/or_widget.dart';
import 'package:clean_sevice/Shared/Components/text_style.dart';
import 'package:clean_sevice/Shared/Constants/app_color.dart';
import 'package:clean_sevice/Shared/Constants/app_strings.dart';
import 'package:clean_sevice/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const String loginScreenRoute = '/LoginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            67.verticalSpace,
            Center(
                child: Text(
              AppStrings.loginWelcome,
              style: textStyle(),
              textAlign: TextAlign.center,
            )),
            40.verticalSpace,
            CustomTextFeild(
              title: AppStrings.email,
            ),
            32.verticalSpace,
            CustomTextFeild(
              title: AppStrings.password,
            ),
            8.verticalSpace,
            InkWell(
              onTap: () {},
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Text(
                  AppStrings.forgetPassword,
                  style: textStyle(
                      size: 12, weight: FontWeight.w300, isDecorated: true),
                ),
              ),
            ),
            40.verticalSpace,
            CustomContainerButton(title: AppStrings.login, weight: FontWeight.w700,
            onPressed: () => context.go(MainTapScreen.mainTapScreenRoute),
            ),
            8.verticalSpace,
            InkWell(
              onTap: () => context.go(SignUpScreen.signUpScreenRoute),
              child: Center(
                  child: Text(
                AppStrings.donotHaveAccount,
                style: textStyle(
                    size: 12, weight: FontWeight.w300, isDecorated: true),
              )),
            ),
            75.verticalSpace,
            OrWidget(),
            40.verticalSpace,
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    decoration: BoxDecoration(
                        color: AppColors.ffF6F7F9, shape: BoxShape.circle),
                    child: Assets.icons.calling.svg(fit: BoxFit.fill),
                  ),
                  20.horizontalSpace,
                  Container(
                    width: 50.w,
                    height: 50.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    decoration: BoxDecoration(
                        color: AppColors.ffF6F7F9, shape: BoxShape.circle),
                    child: Assets.icons.google.svg(fit: BoxFit.fill),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomTextFeild extends StatefulWidget {
  const CustomTextFeild(
      {super.key,
      required this.title,
      this.suffixIcon,
      this.isPassword = false});
  final String title;
  final Widget? suffixIcon;
  final bool isPassword;
  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {

  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: textStyle(color: Colors.black.withOpacity(.26)),
        ),
        8.verticalSpace,
        SizedBox(
          height: 40.h,
          child: TextFormField(
            obscureText: isShow,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 14.w),
                border: outlineInputB(),
                enabledBorder: outlineInputB(),
                disabledBorder: outlineInputB(),
                focusedBorder: outlineInputB(),
                suffixIcon: widget.isPassword
                    ? InkWell(
                        onTap: () => setState(() {
                          isShow = !isShow;
                        }),
                        child: Icon(
                          isShow
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: 18.r,
                          color: AppColors.ff017FB0MainColor,
                        ),
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent),
                      )
                    : widget.suffixIcon,
                suffixIconConstraints:
                    BoxConstraints.expand(height: 13.h, width: 30.w)),
          ),
        )
      ],
    );
  }
}
