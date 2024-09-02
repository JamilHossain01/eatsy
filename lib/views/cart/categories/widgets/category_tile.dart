
import 'package:eatsy/common/app_style.dart';
import 'package:eatsy/common/reuseable_text.dart';
import 'package:eatsy/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../categorie_page.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.category,
  });

  final dynamic category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => const CategoriePage(),transition:Transition.fadeIn,
            duration: const Duration(milliseconds: 900)
        );
      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        child: Image.network(category['imageUrl']),
      ),
      title: ReuseableText(
          text: category['title'],
          style: appStyle(12, kGray, FontWeight.normal)),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: kGray,
        size: 15.r,
      ),
    );
  }
}
