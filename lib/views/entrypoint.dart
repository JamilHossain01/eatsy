import 'package:eatsy/constants/constants.dart';
import 'package:eatsy/controllers/tab_index_controller.dart';
import 'package:eatsy/main.dart';
import 'package:eatsy/views/cart/cart_page.dart';
import 'package:eatsy/views/home/home_page.dart';
import 'package:eatsy/views/profile/home_page.dart';
import 'package:eatsy/views/search/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class MainScreen extends StatelessWidget {
  MainScreen({
    super.key,
  });
  List<Widget> pageList = [
    const HomePage(),
    const SearchPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pageList[controller.tabindex],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: BottomNavigationBar(
                    selectedIconTheme: const IconThemeData(color: kSecondary),
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.black38),
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    onTap: (value) {
                      controller.setTabIndex = value;
                    },
                    currentIndex: controller.tabindex,
                    items: [
                      BottomNavigationBarItem(
                          icon: controller.tabindex == 0
                              ? const Icon(AntDesign.appstore1)
                              : const Icon(AntDesign.appstore_o),
                          label: 'Home'),
                      const BottomNavigationBarItem(
                          icon: Icon(AntDesign.search1), label: "Search"),
                      const BottomNavigationBarItem(
                          icon: Badge(
                              label: Text('1'),
                              child: Icon(FontAwesome.opencart)),
                          label: 'cart'),
                      BottomNavigationBarItem(
                          icon: controller.tabindex == 3
                              ? const Icon(FontAwesome.user_circle)
                              : const Icon(FontAwesome.user_circle_o),
                          label: 'profile'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
