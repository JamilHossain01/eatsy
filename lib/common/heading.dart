import 'package:eatsy/common/app_style.dart';
import 'package:eatsy/common/reuseable_text.dart';
import 'package:eatsy/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Heading extends StatelessWidget {
   Heading({super.key, required this.text, this.onTap});
  final String text;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ Padding(padding:EdgeInsets.only(top: 10.h),
          child: ReuseableText(
          text: text,
          style: appStyle(16, kDark, FontWeight.w600),
        ),),

          GestureDetector(
            onTap: onTap,child: Icon(AntDesign.appstore1,color: kSecondary,size: 20.sp,),
          )
        ],
      ),
    );
  }
}
