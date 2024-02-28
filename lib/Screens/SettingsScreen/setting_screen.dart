import 'package:clean_sevice/Shared/Components/text_style.dart';
import 'package:clean_sevice/Shared/Constants/app_color.dart';
import 'package:clean_sevice/Shared/Constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
          //************* language ************* */
          ExpansionTile(
            title: Text(
              AppStrings.language,
              style: textStyle(size: 15, color: AppColors.ff796870),
            ),
          ),
          24.verticalSpace,
          //************* who we are ************* */
          ExpansionTile(
            title: Text(
              AppStrings.whoWeAre,
              style: textStyle(size: 15, color: AppColors.ff796870),
            ),
            childrenPadding:
                EdgeInsets.only(right: 24.w, left: 24.w, bottom: 10.h),
            children: [
              Text(
                'لوريم إيبسو هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر',
                style: textStyle(size: 10, weight: FontWeight.w300),
              )
            ],
          ),
          24.verticalSpace,
          //************* common questions ************* */
          ExpansionTile(
            title: Text(
              AppStrings.commonQuestions,
              style: textStyle(size: 15, color: AppColors.ff796870),
            ),
          ),
          24.verticalSpace,
          //************* contact us ************* */
          ExpansionTile(
            title: Text(
              AppStrings.contactUs,
              style: textStyle(size: 15, color: AppColors.ff796870),
            ),
          ),
          24.verticalSpace,
        ],
      ),
    );
  }
}
