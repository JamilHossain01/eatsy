import 'package:eatsy/common/custom_appbar.dart';
import 'package:eatsy/common/heading.dart';
import 'package:eatsy/views/home/all_fastest_food.dart';
import 'package:eatsy/views/home/all_nearby_restaurant.dart';
import 'package:eatsy/views/home/recommendation.dart';
import 'package:eatsy/views/home/widgets/category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../common/custom_container.dart';
import '../../constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: const CustomAppBar()),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              CategoryList(),
              Heading(
                text: 'Nearby Restaurant ',
                onTap: () {
                  Get.to(AllNearbyRestaurant(),
                      transition: Transition.fadeIn,
                      duration: Duration(milliseconds: 500));
                },
              ),
              Heading(
                text: 'Try Something New ',
                onTap: () {
                  Get.to(Recommendation(),
                      transition: Transition.fadeIn,
                      duration: Duration(milliseconds: 500));
                },
              ),
              Heading(
                text: 'Fastest food closer to you  ',
                onTap: () {
                  Get.to(AllFastestFood(),
                      transition: Transition.fadeIn,
                      duration: Duration(milliseconds: 500));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
