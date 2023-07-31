import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

class MainTab extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Main tab'),
      ),
    );
  }
}
