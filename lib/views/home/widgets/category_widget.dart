import 'package:eatsy/controllers/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/app_style.dart';
import '../../../common/reuseable_text.dart';
import '../../../constants/constants.dart';
import '../../cart/categories/widgets/all_categories_list.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
    this.category,
  });

  dynamic category;

  @override
  Widget build(BuildContext context) {
    final CategoryController controller = Get.put(CategoryController());

    return GestureDetector(onTap: () {
      if (controller.categoryValue == category['_id']) {
        controller.updateCAtegory = '';
        controller.updateTitle = '';
        // print(category['_id']);
      } else if (category['value'] == 'more') {
        Get.to(() => const AllCategories(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 900));
        // Transform.flip();
      } else {
        controller.updateCAtegory = category['_id'];
        controller.updateTitle = category['title'];
      }
    }, child: Obx(() {
      return Container(
        margin: EdgeInsets.only(right: 6.h),
        padding: EdgeInsets.only(top: 4.w),
        width: width * 0.19,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
              color: controller.categoryValue == category['_id']
                  ? kSecondary
                  : kOffWhite,
              width: .5.w),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
              child: Image.network(
                category["imageUrl"],
                fit: BoxFit.contain,
              ),
            ),
            ReuseableText(
                text: category['title'],
                style: appStyle(12, kDark, FontWeight.normal))
          ],
        ),
      );
    }));
  }
}
