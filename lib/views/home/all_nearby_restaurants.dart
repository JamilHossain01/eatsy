import 'package:eatsy/common/back_ground_container.dart';
import 'package:eatsy/constants/uidata.dart';
import 'package:eatsy/views/home/widgets/restaurant_tile_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/app_style.dart';
import '../../common/reusable_text.dart';
import '../../constants/constants.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        title: Center(
          child: ReuseableText(
              text: "Nearby Restaurants",
              style: appStyle(13, kLightWhite, FontWeight.w600)),
        ),
      ),
      body: BackGroundContainer(
        color: kWhite,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(restaurants.length, (i) {
              var restaurent = restaurants[i];
              return RestaurantTileWidget(
                restaurant: restaurent,
              );
            }),
          ),
        ),
      ),
    );
  }
}
