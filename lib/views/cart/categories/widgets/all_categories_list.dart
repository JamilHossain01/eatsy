import 'package:eatsy/common/app_style.dart';
import 'package:eatsy/common/back_ground_contanier.dart';
import 'package:eatsy/common/reuseable_text.dart';
import 'package:eatsy/constants/constants.dart';
import 'package:eatsy/constants/uidata.dart';
import 'package:eatsy/views/cart/categories/categorie_page.dart';
import 'package:eatsy/views/home/widgets/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'category_tile.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kOffWhite,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kOffWhite,
          title: ReuseableText(
            text: "All Categories ",
            style: appStyle(12, kGray, FontWeight.w600),
          ),
        ),
        body: BackGroundContainer(
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.only(top: 10.h, left: 30.w),
              height: hieght,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: List.generate(categories.length, (i) {
                  var category = categories[i];
                  return CategoryTile(category: category);
                }),
              ),
            )));
  }
}
