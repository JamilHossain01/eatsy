import 'package:eatsy/common/app_style.dart';
import 'package:eatsy/common/reusable_text.dart';
import 'package:eatsy/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodTileWidget extends StatelessWidget {
  const FoodTileWidget({super.key, required this.food});
  final dynamic food;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.h),
            child: Container(
              margin: EdgeInsets.only(bottom: 8.h),
              height: 70.h,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                color: kOffWhite,
              ),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 70.h,
                              width: 70.w,
                              child: Image.network(
                                food["imageUrl"],
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 5.w, bottom: 2.h),
                                child: Container(
                                  height: 16.h,
                                  width: width,
                                  color: kGray.withOpacity(0.5),
                                  child: RatingBarIndicator(
                                    itemCount: 5,
                                    rating: 5,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: kSecondary,
                                    ),
                                    itemSize: 12.h,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ReuseableText(
                            text: food["title"],
                            style: appStyle(12, kDark, FontWeight.w600),
                          ),
                          ReuseableText(
                            text: 'Duration Time ${food["time"]}',
                            style: appStyle(
                              12,
                              kGray,
                              FontWeight.w400,
                            ),
                          ),

                          SizedBox(
                            height: 18.h,
                            width: width * 0.7,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: food['additives'].length,
                                itemBuilder: (context, i) {
                                  var additive = food['additives'][i];
                                  return Container(
                                    margin: EdgeInsets.only(right: 5.h),
                                    decoration: BoxDecoration(
                                        color: kSecondaryLight,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(9.r))),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: ReuseableText(
                                            text: additive['title'],
                                            style: appStyle(
                                                8, kGray, FontWeight.normal)),
                                      ),
                                    ),
                                  );
                                }),
                          )
                          // Container(
                          //   width: width * 0.65,
                          //   child: Text(
                          //     overflow: TextOverflow.ellipsis,
                          //     restaurant["coords"]["address"],
                          //     style: appStyle(
                          //       11,
                          //       kGray,
                          //       FontWeight.w400,
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 5.w,
            top: 15.h,
            child: Container(
              height: 19.h,
              width: 60.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                color:
                    food['isAvailable'] == true || food['isAvailable'] == null
                        ? kPrimary
                        : kSecondaryLight,
              ),
              child: Center(
                child: ReuseableText(
                    text: "\$ ${food["price"]}".toString(),
                    style: appStyle(12, kWhite, FontWeight.w500)),
              ),
            ),
          ),
          Positioned(
              right: 70.w,
              top: 15.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(48.r),
                child: Container(
                  color: kSecondary,
                  child: const Icon(
                    Icons.shopping_cart,
                    color: kOffWhite,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
