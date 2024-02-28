import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/app_color.dart';



 TextStyle textStyle({
  Color? color,
  double? size,
  double? height,
  bool isDecorated = false,
  FontWeight? weight,
}) {
  return TextStyle(
    color: color??AppColors.ff017FB0MainColor,
    fontSize: (size ?? 16).sp,
    decoration: isDecorated ? TextDecoration.underline : TextDecoration.none,
    fontFamily: 'Cairo',
    fontWeight: weight??FontWeight.normal,
    height: height ?? 1.5,
  );
}
