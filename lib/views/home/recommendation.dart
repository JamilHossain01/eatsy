import 'package:eatsy/common/app_style.dart';
import 'package:eatsy/common/reuseable_text.dart';
import 'package:eatsy/constants/constants.dart';
import 'package:flutter/material.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: kOffWhite,
        elevation: 0.3,
        title: ReuseableText(text: "Recommendation", style: appStyle(13, kDark, FontWeight.w600)),
      ),
      body: Center(child: Text('All Recommendation'),),
    );
  }
}
