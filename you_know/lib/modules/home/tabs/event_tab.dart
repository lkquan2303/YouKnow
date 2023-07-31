// import 'package:WooPeople/modules/home/component/main_app_bar.dart';
// import 'package:WooPeople/routes/app_pages.dart';
// import 'package:WooPeople/widgets/app_bar_customize/AppBarCustomize.dart';
// import 'package:WooPeople/widgets/event_item.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../home_controller.dart';

// class EventTab extends GetView<HomeController> {
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     final GlobalKey<NestedScrollViewState> _scrollKey = GlobalKey();

//     return NestedScrollView(
//       key: _scrollKey,
//       headerSliverBuilder: (_, __) => [
//         MainSliverAppBar(
//           context: context,
//         )
//       ],
//       body: Scaffold(
//         body: Column(
//           children: [
//             AppBarCustomize(
//               title: "Gallery",
//               onPressed: controller.getFromGallery,
//             ),
//             Container(
//               child: TabBar(
//                 labelColor: Color.fromRGBO(4, 2, 46, 1),
//                 unselectedLabelColor: Colors.grey,
//                 controller: controller.tabController,
//                 tabs: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text('HOT EVENTS'),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text('ALL'),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: controller.tabController,
//                 children: [
//                   Container(
//                     child: Padding(
//                       padding: const EdgeInsets.only(
//                           right: 10, left: 10, top: 10, bottom: 50),
//                       child: SingleChildScrollView(
//                         child: Column(
//                           children: new List.generate(
//                               10,
//                               (index) => InkWell(
//                                     onTap: () => Get.toNamed(
//                                         Routes.EVENT_DETAIL,
//                                         parameters: {
//                                           "title": "CÁC CHUYẾN DU LỊCH KÌ THÚ",
//                                           "date": "Sat 29 Jul",
//                                           "location": "Nhà thi đấu phú thọ",
//                                           "isHotItem": "true"
//                                         }),
//                                     child: EventItem(
//                                       isHotItem: true,
//                                       size: size,
//                                       urlImage:
//                                           "https://upload.wikimedia.org/wikipedia/commons/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg",
//                                     ).paddingOnly(bottom: 20),
//                                   )),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Padding(
//                       padding: const EdgeInsets.only(
//                           right: 10, left: 10, top: 10, bottom: 50),
//                       child: SingleChildScrollView(
//                         child: Column(
//                           children: new List.generate(
//                               10,
//                               (index) => InkWell(
//                                     onTap: () => Get.toNamed(
//                                         Routes.EVENT_DETAIL,
//                                         parameters: {
//                                           "title":
//                                               "CÁC CHUYẾN DU LỊCH KHÔNG HỀ KÌ THÚ",
//                                           "date": "Sat 29 Jul",
//                                           "location": "Nhà thi đấu phú thọ",
//                                           "isHotItem": "false"
//                                         }),
//                                     child: EventItem(
//                                       size: size,
//                                       urlImage:
//                                           "https://bsmedia.business-standard.com/_media/bs/img/article/2020-12/11/full/1607656152-0479.jpg",
//                                     ).paddingOnly(bottom: 20),
//                                   )),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Obx(
//             //   () => Expanded(
//             //     child: GridView.builder(
//             //       physics: const BouncingScrollPhysics(
//             //         parent: AlwaysScrollableScrollPhysics(),
//             //       ),
//             //       padding: const EdgeInsets.all(1),
//             //       itemCount: controller.photos.length,
//             //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             //         crossAxisCount: 3,
//             //       ),
//             //       itemBuilder: ((context, index) {
//             //         return Container(
//             //           padding: const EdgeInsets.all(0.5),
//             //           child: InkWell(
//             //             onTap: () => Navigator.push(
//             //               context,
//             //               MaterialPageRoute(
//             //                 builder: (_) => PhotoViewPage(
//             //                     photos: controller.photos, index: index),
//             //               ),
//             //             ),
//             //             child: Hero(
//             //               tag: controller.photos[index],
//             //               child: CachedNetworkImage(
//             //                 imageUrl: controller.photos[index],
//             //                 fit: BoxFit.cover,
//             //                 placeholder: (context, url) =>
//             //                     Container(color: Colors.grey),
//             //                 errorWidget: (context, url, error) => Container(
//             //                   color: Colors.red.shade400,
//             //                 ),
//             //               ),
//             //             ),
//             //           ),
//             //         );
//             //       }),
//             //     ),
//             //   ),
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
