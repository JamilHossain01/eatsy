import 'package:eatsy/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'views/entrypoint.dart';

Widget defaultHome = MainScreen();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 625),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,

          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
              scaffoldBackgroundColor: kWhite,
              iconTheme: const IconThemeData(color: kGray),
              primarySwatch: Colors.grey),
          home: child,
        );
      },
      child: defaultHome,
    );
  }
}
