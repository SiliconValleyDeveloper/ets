import 'package:ets/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../../themes/color.dart';
import '../../account/views/account_view.dart';
import '../controllers/root_app_controller.dart';

class RootAppView extends GetView<RootAppController> {
  const RootAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return Obx(() {
      return IndexedStack(
        index: controller.activeIndex.value,
        children: [
          HomePage(),
          AccountPage(),
          AccountPage(),

          // NotificationPage(),
          // ExplorePage(),
          AccountPage(),
        ],
      );
    });
  }

  Widget getFooter() {
    return Obx(() {
      return Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: black.withOpacity(0.1),
                blurRadius: 10,
                offset: Offset(0, -2),
              )
            ]
        ),
        child: BottomNavigationBar(
          currentIndex: controller.activeIndex.value,
          onTap: controller.onSelectedTab,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primary,
          unselectedItemColor: grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(LineIcons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(LineIcons.bell),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(LineIcons.globe),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(LineIcons.user),
              label: "Profile",
            ),
          ],
        ),
      );
    });
  }
}
