import 'package:flutter/material.dart';

import '../../common/app_style.dart';
import '../../common/reuseable_text.dart';
import '../../constants/constants.dart';

class AllNearbyRestaurant extends StatelessWidget {
  const AllNearbyRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kOffWhite,
        elevation: 0.3,
        title: ReuseableText(text: " FastestFood", style: appStyle(13, kDark, FontWeight.w600)),
      ),
      body: Center(child: Text('All FastestFood'),),
    );;
  }
}
