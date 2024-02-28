import 'package:clean_sevice/Screens/AuthScreens/LoginScreen/login_screen.dart';
import 'package:clean_sevice/Screens/OrderScreen/order_screen.dart';
import 'package:clean_sevice/Shared/Components/container_button.dart';
import 'package:clean_sevice/Shared/Constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../gen/assets.gen.dart';

class CompleteOrderScreen extends StatelessWidget {
  const CompleteOrderScreen({super.key});
  static const String completeOrderScreenRoute = '/CompleteOrderScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            20.verticalSpace,
            Row(
              children: [
                Spacer(),
                Center(
                  child: Assets.images.logo.image(
                    width: 98.w,
                    height: 98.h,
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20.r,
                  ),
                  onPressed: () => context.pop(),
                )
              ],
            ),
            40.verticalSpace,
            CustomTextFeild(title: AppStrings.chooseDate),
            24.verticalSpace,
            CustomTextFeild(title: AppStrings.name),
            24.verticalSpace,
            CustomTextFeild(title: AppStrings.address),
            24.verticalSpace,
            CustomTextFeild(title: AppStrings.phone),
            70.verticalSpace,
            CustomContainerButton(
              title: AppStrings.finishOrder,
              weight: FontWeight.w700,
            )
          ])),
    );
  }
}
