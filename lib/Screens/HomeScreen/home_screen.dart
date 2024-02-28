import 'package:clean_sevice/Screens/OrderScreen/order_screen.dart';
import 'package:clean_sevice/Shared/Components/text_style.dart';
import 'package:clean_sevice/Shared/Constants/app_color.dart';
import 'package:clean_sevice/Shared/Constants/app_strings.dart';
import 'package:clean_sevice/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:kiwi/kiwi.dart';

import '../../Controllers/HomeControllers/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit homeCubit = KiwiContainer().resolve<HomeCubit>();
    return Scaffold(
      body: BlocBuilder(
        bloc: homeCubit,
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                60.verticalSpace,
                Row(
                  children: [
                    Assets.icons.notification
                        .svg(width: 20.w, height: 20.h, fit: BoxFit.fill),
                    10.horizontalSpace,
                    Expanded(
                        child: SizedBox(
                      width: 299.w,
                      height: 40.h,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintStyle: textStyle(),
                            hintText: AppStrings.search,
                            border: newMethod(),
                            enabledBorder: newMethod(),
                            focusedBorder: newMethod(),
                            contentPadding: EdgeInsetsDirectional.only(
                                start: 24.w, end: 8.w),
                            suffixIconConstraints:
                                BoxConstraints.tight(Size(35.w, 24.h)),
                            suffixIcon: Assets.icons.search.svg(
                              width: 24.w,
                              height: 24.h,
                            )),
                      ),
                    ))
                  ],
                ),
                29.verticalSpace,
                Container(
                  width: 328.w,
                  height: 131.h,
                  color: AppColors.ffF4F6FB,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        AppStrings.homeDesc,
                        style: textStyle(),
                        textAlign: TextAlign.center,
                      )),
                      (Assets.images.home)
                          .image(width: 118.w, height: 133.h, fit: BoxFit.fill)
                    ],
                  ),
                ),
                24.verticalSpace,
                Text(
                  AppStrings.ourServices,
                  style: textStyle(),
                ),
                10.verticalSpace,
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 32.w,
                        mainAxisSpacing: 16.h),
                    itemCount: 9,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => context.go(
                          Uri(path:
                          OrderScreen.orderScreenRoute,
                          queryParameters: {'image':index == 0
                                      ? Assets.images.image.path
                                      : index == 1
                                          ? Assets.images.image3.path
                                          : index == 2
                                              ? Assets.images.image2.path
                                              : Assets.images.image1.path,
                                              
                                              'title':homeCubit.servicesTitles[index]}
                          ).toString()),
                        child: Container(
                          width: 88.w,
                          height: 84.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              border:
                                  Border.all(color: AppColors.ff017FB0MainColor)),
                          child: Column(
                            children: [
                              (index == 0
                                      ? Assets.images.image
                                      : index == 1
                                          ? Assets.images.image3
                                          : index == 2
                                              ? Assets.images.image2
                                              : Assets.images.image1)
                                  .image(
                                      height: 56.h,
                                      width: 88.w,
                                      fit: BoxFit.fill),
                                      8.verticalSpace,
                              Text(homeCubit.servicesTitles[index] , style: textStyle(
                                weight: FontWeight.w300,
                                size: 10
                              ),)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  OutlineInputBorder newMethod() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.r),
        borderSide: BorderSide(color: AppColors.ff017FB0MainColor));
  }
}
