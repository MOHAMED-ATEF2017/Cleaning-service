  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/app_color.dart';

OutlineInputBorder outlineInputB({
  double ?radius}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular((radius?? 12).r),
        borderSide: BorderSide(color: AppColors.ff017FB0MainColor));
  }
