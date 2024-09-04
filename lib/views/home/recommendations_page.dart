import 'package:eatsy/common/back_ground_container.dart';
import 'package:eatsy/constants/constants.dart';
import 'package:eatsy/constants/uidata.dart';
import 'package:eatsy/views/home/widgets/foods_tile_widgets.dart';
import 'package:flutter/material.dart';

import '../../common/app_style.dart';
import '../../common/reusable_text.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReuseableText(
            text: "Recommendations",
            style: appStyle(13, kGray, FontWeight.w600)),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(foods.length, (i) {
            var food = foods[1];
            return FoodTileWidget(food: food);
          }),
        ),
      ),
    );
  }
}
