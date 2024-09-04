import 'package:eatsy/common/back_ground_container.dart';
import 'package:eatsy/constants/uidata.dart';
import 'package:eatsy/views/home/widgets/foods_tile_widgets.dart';
import 'package:flutter/material.dart';

import '../../common/app_style.dart';
import '../../common/reusable_text.dart';
import '../../constants/constants.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kSecondary,
          title: Center(
            child: ReuseableText(
                text: "Fastest Foods",
                style: appStyle(13, kLightWhite, FontWeight.w600)),
          ),
        ),
        body: BackGroundContainer(
          color: kWhite,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(foods.length, (i) {
              var food = foods[i];
              return FoodTileWidget(food: food);
            }),
          ),
        ));
  }
}
