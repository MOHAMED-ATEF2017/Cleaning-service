import 'package:clean_sevice/Screens/PaymentMethodsScreen/payment_methods_screen.dart';
import 'package:clean_sevice/Shared/Components/text_style.dart';
import 'package:clean_sevice/Shared/Constants/app_color.dart';
import 'package:clean_sevice/Shared/Constants/app_strings.dart';
import 'package:clean_sevice/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          60.verticalSpace,
          Center(
            child: Assets.images.logo.image(
              width: 98.w,
              height: 98.h,
            ),
          ),
          40.verticalSpace,
          //**************** profile *********** */
          ProfileRowWidget(
            title: AppStrings.myProfile,
          ),
          24.verticalSpace,
          //************** wallet**************** */
          ProfileRowWidget(
            title: AppStrings.wallet,
          ),
          24.verticalSpace,
          //****************** payment methods ************** */
          ProfileRowWidget(
            title: AppStrings.payMethods,
            onTap: () => context.go(PaymnetMethodsScreen.paymnetMethodsScreenRoute),
          ),
          24.verticalSpace,
          //********** subscribes *************** */
          ProfileRowWidget(
            title: AppStrings.subscribes,
          ),
          24.verticalSpace,
        ],
      ),
    );
  }
}

class ProfileRowWidget extends StatelessWidget {
  const ProfileRowWidget({
    super.key,
    required this.title,
    this.onTap,
  });
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: textStyle(
                size: 15,
                color: AppColors.ff796870,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 15.r,
              color: AppColors.ff796870,
            )
          ],
        ),
      ),
    );
  }
}
