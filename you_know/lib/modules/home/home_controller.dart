import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_know/modules/home/tabs/me_tab_setting.dart';
import 'package:you_know/modules/home/tabs/tabs.dart';

import '../../api/api_repository.dart';
import '../../lang/translation_service.dart';
import '../../models/response/users_response.dart';
import '../../shared/utils/navigator_helper.dart';
import 'component/tabIcon_data.dart';
import 'tabs/language.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final ApiRepository? apiRepository;
  HomeController({this.apiRepository});

  var currentTab = MainTabs.home.obs;
  var users = Rxn<UsersResponse>();
  var user = Rxn<Datum>();

  late AnimationController animationController;
  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  late MainTab mainTab;
  late DiscoverTab discoverTab;
  // late ResourceTab resourceTab;
  late RewardPage rewardTab;
  late MetabSetting meTab;
  final PageController pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  RxInt bottomNavIndex = 0.obs;
  RxInt rewardNavIndex = 0.obs;

  late TabController tabController;

  @override
  void onInit() async {
    super.onInit();
    mainTab = MainTab();

    tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    discoverTab = DiscoverTab();
    //resourceTab = ResourceTab();
    rewardTab = RewardPage();
    meTab = MetabSetting();
  }

  var _selectedLanguage = Language(1, "🇺🇸", "English", "en").obs;
  Language get selectedLanguage => _selectedLanguage.value;

  void handleLanguageSelection(Language? language) {
    if (language != null) {
      _selectedLanguage.value = language;
      String code = language.code;

      if (code == 'vi') {
        TranslationService.changeLocale('vi');
      } else if (code == 'en') {
        TranslationService.changeLocale('en');
      } else if (code == 'ko') {
        TranslationService.changeLocale('ko');
      }
      print("Bạn đã chọn: ${language.name}");
      // Thực hiện các hành động cần thiết sau khi chọn ngôn ngữ
    }
  }

  void signout() {
    var prefs = Get.find<SharedPreferences>();
    prefs.clear();

    // Get.back();
    NavigatorHelper.popLastScreens(popCount: 2);
  }

  void switchTab(index) {
    var tab = _getCurrentTab(index);
    currentTab.value = tab;
  }

  void setValueBottomIndex(int index) {
    bottomNavIndex.value = index;
  }

  int getCurrentIndex(MainTabs tab) {
    switch (tab) {
      case MainTabs.home:
        return 0;
      case MainTabs.discover:
        return 1;
      case MainTabs.resource:
        return 2;
      case MainTabs.inbox:
        return 3;
      case MainTabs.me:
        return 4;
      default:
        return 0;
    }
  }

  MainTabs _getCurrentTab(int index) {
    switch (index) {
      case 0:
        return MainTabs.home;
      case 1:
        return MainTabs.discover;
      case 2:
        return MainTabs.resource;
      case 3:
        return MainTabs.inbox;
      case 4:
        return MainTabs.me;
      default:
        return MainTabs.home;
    }
  }

  @override
  void onClose() {
    super.dispose();
  }
}
