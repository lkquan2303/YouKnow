import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:you_know/modules/home/tabs/discover_tab.dart';
import 'package:you_know/modules/home/tabs/main_tab.dart';
import 'package:you_know/modules/home/tabs/me_tab_setting.dart';
import 'package:you_know/modules/home/tabs/reward_page.dart';
import '../../shared/constants/colors.dart';
import '../../shared/constants/common.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Obx(
        () => _buildWidget(context),
      ),
    );
  }

  Widget _buildWidget(BuildContext context) {
    List<IconData> iconList = [
      Icons.home,
      Icons.calendar_month,
      Icons.card_giftcard,
      Icons.person,
    ];

    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: controller.bottomNavIndex.value,
        children: _widgetOptions(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          'assets/images/qr-code.png',
          height: 32.0,
        ),
        backgroundColor: ColorConstants.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: ColorConstants.white,
        splashColor: CommonConstants.kPrimaryColor,
        activeColor: CommonConstants.kPrimaryColor,
        inactiveColor: Colors.grey,
        icons: iconList,
        iconSize: 25,
        activeIndex: controller.bottomNavIndex.value,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {},
      ),
    );
  }

  List<Widget> _widgetOptions() {
    return [
      MainTab(),
      DiscoverTab(),
      RewardPage(),
      MetabSetting(),
    ];
  }

  // Widget _buildContent(MainTabs tab) {
  //   switch (tab) {
  //     case MainTabs.discover:
  //       return controller.discoverTab;
  //     case MainTabs.resource:
  //       return controller.resourceTab;
  //     case MainTabs.inbox:
  //       return controller.rewardTab;
  //     case MainTabs.me:
  //       return controller.meTab;
  //     default:
  //       return controller.mainTab;
  //   }
  // }
}
