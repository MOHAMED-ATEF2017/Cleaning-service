import 'package:clean_sevice/Screens/MainTapScreen/main_tap_screen.dart';
import 'package:clean_sevice/Screens/OrderScreen/complete_order_screen.dart';
import 'package:clean_sevice/Shared/Components/border.dart';
import 'package:clean_sevice/Shared/Components/container_button.dart';
import 'package:clean_sevice/Shared/Components/text_style.dart';
import 'package:clean_sevice/Shared/Constants/app_color.dart';
import 'package:clean_sevice/Shared/Constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../gen/assets.gen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen(
      {super.key, required this.assetGenImage, required this.title});
  static const String orderScreenRoute = '/OrderScreen';
  final AssetGenImage assetGenImage;
  final String title;
  @override
  Widget build(BuildContext context) {
    debugPrint(assetGenImage.path);
    debugPrint(title);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  onPressed: () => context.go(MainTapScreen.mainTapScreenRoute),
                )
              ],
            ),
            40.verticalSpace,
            Center(
              child: Container(
                width: 325.w,
                // height: 194.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors.ff017FB0MainColor)
                ),
                child: Column(
                  children: [
                    assetGenImage.image(
                     width: 325.w,
                     height: 132.h,
                     filterQuality: FilterQuality.high,
                      fit: BoxFit.fill
                    ),
                    16.verticalSpace,
                    Text(title , style: textStyle(size: 24,weight: FontWeight.w300),),
                    16.verticalSpace,
                  ],
                ),
              ),
            ),
            16.verticalSpace,
            Text(AppStrings.aboutService , style: textStyle(),),
            Text('لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف' ,
            style: textStyle(size: 12 , weight: FontWeight.w300 , 
            ),
            textAlign: TextAlign.justify,
            ),
            9.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(AppStrings.servicesPrice , style: textStyle(weight: FontWeight.w300 , size: 14),),
                8.horizontalSpace,
                Text('15 ر.س / متر' , style: textStyle(size: 14 , weight: FontWeight.w700 , ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 152.w,
                  height: 28.h,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: textStyle(size: 14),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal:8.w ),
                      prefixIcon: Text("\t${AppStrings.meters}", style: textStyle(size: 14 , weight: FontWeight.w300),),
                      fillColor: AppColors.ffD9D9D9,
                      filled: true,
                      border: outlineInputB(),
                      enabledBorder: outlineInputB(),
                      focusedBorder: outlineInputB(),
                    ),
                  ),
                ),
                Spacer(),
                Text(AppStrings.total , style: textStyle(weight: FontWeight.w300 , size: 14),),
                8.horizontalSpace,
                Text('15 ر.س / متر' , style: textStyle(size: 14 , weight: FontWeight.w700 , ),)
              ],
            ),
            73.verticalSpace,
            CustomContainerButton(title: AppStrings.askService , weight: FontWeight.w700 ,
            onPressed: () => context.push(CompleteOrderScreen.completeOrderScreenRoute),)
          ],
        ),
      ),
    );
  }
}
