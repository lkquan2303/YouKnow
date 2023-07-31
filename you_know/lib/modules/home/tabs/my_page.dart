// import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../routes/app_pages.dart';
// import '../../../shared/constants/common.dart';

// class MyPage extends GetView<HomeController> {
//   MyPage({super.key});

//   final MeController meController = Get.put(MeController());

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       extendBody: true,
//       appBar: AppBar(
//         title: Text(CommonConstants.myPage.tr),
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(10),
//         child: SingleChildScrollView(
//           child: SafeArea(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(30.0),
//                   child: Container(
//                     width: size.width * .4,
//                     height: size.height * .19,
//                     decoration: BoxDecoration(
//                       color: const Color(0xff7c94b6),
//                       image: DecorationImage(
//                         image: AssetImage('assets/images/bTop.jpg'),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.all(Radius.circular(90.0)),
//                       border: Border.all(
//                         color: CommonConstants.kPrimaryColor,
//                         width: 2.0,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SettingsGroup(
//                   items: [
//                     SettingsItem(
//                       onTap: () => Get.toNamed(Routes.EDIT_PROFILE,
//                           arguments: meController),
//                       icons: CupertinoIcons.profile_circled,
//                       iconStyle: IconStyle(
//                         iconsColor: Colors.white,
//                         withBackground: true,
//                         backgroundColor: CommonConstants.kPrimaryColor,
//                       ),
//                       title: CommonConstants.changeProfile.tr,
//                     ),
//                     SettingsItem(
//                       onTap: () => Get.toNamed(Routes.CHANGE_PASSWORD),
//                       icons: Icons.security,
//                       iconStyle: IconStyle(
//                         iconsColor: Colors.white,
//                         withBackground: true,
//                         backgroundColor: CommonConstants.kPrimaryColor,
//                       ),
//                       title: CommonConstants.changePassword.tr,
//                     ),
//                   ],
//                 ),
//                 SettingsGroup(
//                   items: [
//                     SettingsItem(
//                       onTap: () => Get.toNamed(Routes.NOTIFICATION_SETTINGS),
//                       icons: Icons.notifications,
//                       iconStyle: IconStyle(
//                         iconsColor: Colors.white,
//                         withBackground: true,
//                         backgroundColor: CommonConstants.kPrimaryColor,
//                       ),
//                       title: CommonConstants.notificationSetting.tr,
//                     ),
//                     SettingsItem(
//                       onTap: () {
//                         controller.toggleDarkMode();
//                       },
//                       icons: Icons.dark_mode_rounded,
//                       iconStyle: IconStyle(
//                         iconsColor: Colors.white,
//                         withBackground: true,
//                         backgroundColor: CommonConstants.kPrimaryColor,
//                       ),
//                       title: CommonConstants.darkMode.tr,
//                       subtitle: CommonConstants.automatic.tr,
//                       trailing: Obx(
//                         () => Switch(
//                           value: controller.isDarkModeOn.value,
//                           activeTrackColor: CommonConstants.kPrimaryColor,
//                           activeColor: CommonConstants.kPrimaryColor,
//                           onChanged: (value) {
//                             controller.toggleDarkMode();
//                           },
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SettingsGroup(
//                   items: [
//                     SettingsItem(
//                       onTap: () => Get.toNamed(Routes.APP_GUIDE),
//                       icons: Icons.school,
//                       iconStyle: IconStyle(
//                         iconsColor: Colors.white,
//                         withBackground: true,
//                         backgroundColor: CommonConstants.kPrimaryColor,
//                       ),
//                       title: CommonConstants.appGuide.tr,
//                       subtitle: CommonConstants.appGuide.tr,
//                     ),
//                     SettingsItem(
//                       onTap: () {},
//                       icons: Icons.info_rounded,
//                       iconStyle: IconStyle(
//                         backgroundColor: CommonConstants.kPrimaryColor,
//                       ),
//                       title: CommonConstants.about.tr,
//                       subtitle: CommonConstants.learnMoreAboutApp.tr,
//                     ),
//                     SettingsItem(
//                       onTap: () => Get.toNamed(Routes.MEMBER_ACTIVITIES),
//                       icons: Icons.person,
//                       iconStyle: IconStyle(
//                         backgroundColor: CommonConstants.kPrimaryColor,
//                       ),
//                       title: CommonConstants.memberActivities.tr,
//                     ),
//                   ],
//                 ),
//                 SettingsGroup(
//                   items: [
//                     SettingsItem(
//                       onTap: () {
//                         Get.toNamed(Routes.TERM_OF_USE);
//                       },
//                       icons: Icons.terminal,
//                       iconStyle: IconStyle(
//                         backgroundColor: CommonConstants.kPrimaryColor,
//                       ),
//                       title: CommonConstants.termsOfUse.tr,
//                       subtitle: CommonConstants.termOfUseApp.tr,
//                     ),
//                     SettingsItem(
//                       onTap: () {
//                         Get.toNamed(Routes.FRE_ASKED_QUESTION);
//                       },
//                       icons: Icons.question_answer,
//                       iconStyle: IconStyle(
//                         backgroundColor: CommonConstants.kPrimaryColor,
//                       ),
//                       title: CommonConstants.frequentlyAskedQuestion.tr,
//                       subtitle:
//                           CommonConstants.subTitleFrequentlyAksedQuestion.tr,
//                     ),
//                     SettingsItem(
//                       onTap: () {
//                         Get.toNamed(Routes.FRE_ASKED_QUESTION);
//                       },
//                       icons: Icons.exit_to_app_rounded,
//                       iconStyle: IconStyle(
//                         backgroundColor: Colors.red,
//                       ),
//                       title: CommonConstants.signOut.tr,
//                       titleStyle: TextStyle(
//                           color: Colors.red, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 // ChangeLanguage(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
