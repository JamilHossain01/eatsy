import 'package:eatsy/constants/constants.dart';
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
        title: ReusableText(
            text: "Recommendations",
            style: appStyle(13, kGray, FontWeight.w600)),
      ),
      body: const Center(
        child: Text("All Recommendations"),
      ),
    );
  }
}
