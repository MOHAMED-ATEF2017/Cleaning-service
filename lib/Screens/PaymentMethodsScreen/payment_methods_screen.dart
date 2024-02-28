import 'package:clean_sevice/Screens/MainTapScreen/main_tap_screen.dart';
import 'package:clean_sevice/Shared/Components/container_button.dart';
import 'package:clean_sevice/Shared/Components/text_style.dart';
import 'package:clean_sevice/Shared/Constants/app_color.dart';
import 'package:clean_sevice/Shared/Constants/app_strings.dart';
import 'package:clean_sevice/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PaymnetMethodsScreen extends StatelessWidget {
  const PaymnetMethodsScreen({super.key});
  static const String paymnetMethodsScreenRoute = '/PaymnetMethodsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            40.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Assets.icons.notification
                    .svg(width: 20.w, height: 20.h, fit: BoxFit.fill),
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () => context.go(Uri(
                        path: MainTapScreen.mainTapScreenRoute,
                        queryParameters: {'index': '2'}).toString()),
                    icon: Icon(
                      Icons.arrow_forward,
                      color: AppColors.ff017FB0MainColor,
                    ))
              ],
            ),
            20.verticalSpace,
            Container(
              width: 330.w,
              height: 63.h,
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 8.h,
              ),
              decoration: BoxDecoration(
                  color: AppColors.ffD9D9D9.withOpacity(.48),
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border.all(color: AppColors.ff017FB0MainColor)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.choosePaymentMethod,
                    style: textStyle(),
                  ),
                  Center(
                    child: Assets.icons.paymnet
                        .svg(width: 224.w, height: 19.h, fit: BoxFit.fill),
                  ),
                ],
              ),
            ),
            16.verticalSpace,
            Assets.icons.card.svg(width: 327.w, height: 196.h),
            16.verticalSpace,
            PaymentTextFormFeild(
              title: AppStrings.cardName,
            ),
            16.verticalSpace,
            PaymentTextFormFeild(
              title: AppStrings.cardNo,
            ),
            16.verticalSpace,
            Row(
              children: [
                Expanded(
                    child: PaymentTextFormFeild(title: AppStrings.endYear)),
                11.horizontalSpace,
                Expanded(
                    child: PaymentTextFormFeild(title: AppStrings.endYear)),
              ],
            ),
            16.verticalSpace,
            PaymentTextFormFeild(title: AppStrings.cvv),
            21.verticalSpace,
            CustomContainerButton(
              title: AppStrings.finishOrder,
              weight: FontWeight.w700,
              textSize: 16,
            )
          ],
        ),
      ),
    );
  }
}

class PaymentTextFormFeild extends StatelessWidget {
  const PaymentTextFormFeild({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: title,
        hintStyle: textStyle(size: 15),
        border: newMethod(),
        focusedBorder: newMethod(),
        enabledBorder: newMethod(),
      ),
    );
  }

  UnderlineInputBorder newMethod() {
    return UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.ff017FB0MainColor));
  }
}
