import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_controller.dart';

class HomepageScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Homepage")),
    );
  }
}
